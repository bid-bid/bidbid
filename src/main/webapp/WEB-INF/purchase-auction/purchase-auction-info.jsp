<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>bidbid</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="shortcut icon" type="image⁄x-icon" href="../resources/images/bidLogo.ico">
</head>
<body>
<!-- Wrapper -->
<div id="wrapper">
    <!-- Header -->
    <jsp:include page="../fragment/header.jsp"/>

    <center>
        <h1 class="mypage" style="margin-bottom:1em">판매권 입찰</h1>
    </center>
    <div id="main" style="padding: 0em 0 2em 0;">
        <div class="inner">
            <hr>
            <center>
                <h2 class="mypage" style="font-size: 32px; letter-spacing:0">${purchaseAuction.auctionTitle}</h2>
            </center>
            <section class="tiles" style="margin-top: 0; margin-left:auto; margin-right:auto">
                <div style="width: calc(20%);"></div>
                <div style="width: calc(60%); padding:1em;">
                    <table style="margin:1em 0 0 0; ">
                        <tr style="border-top: solid 1px #FFF; border-bottom: solid 1px #c9c9c9; color: #000;">
                            <td style="border-bottom: solid 1px #c9c9c9; color: #000; font-weight: 600;">
                                희망 상품
                            </td>
                        </tr>
                        <tr style="border-top: solid 1px #FFF; border-bottom: solid 1px #c9c9c9; color: #000;">
                            <td style="border-bottom: solid 1px #c9c9c9; color: #000;">
                                ${purchaseAuction.productName}
                            </td>
                        </tr>
                        <tr style="background-color: #FFF; color: #000;">
                            <td>
                                ${purchaseAuction.bestPick.price}
                            </td>
                        </tr>
                        <tr style="background-color: #FFF; color: #000; border-bottom: solid 1px #FFF; ">
                            <td style="font-size:16px">
                                ${purchaseAuction.productCategory.toKorean} &nbsp&nbsp ${purchaseAuction.deadline}
                            </td>
                        </tr>
                    </table>
                </div>
            </section>
            <center>
                <div style="width:80%; margin-bottom: 4em;">
                ${purchaseAuction.description}
                </div>
            </center>

            <center>
                <h2 class="mypage" style="margin-bottom:1em;">입찰 예정 물품</h2>
            </center>
            <table>
                <tr align="center" style="background-color: #f6f6f6; border-bottom: solid 1px #c9c9c9; color: #000;">
                <td style="width:20%; border-bottom: solid 1px #c9c9c9; color: #000;">
                    입찰자
                </td>
                <td style="width:20%; border-bottom: solid 1px #c9c9c9; color: #000;">
                    물건
                </td>
                <td style="width:15%; border-bottom: solid 1px #c9c9c9; color: #000;">
                    가격
                </td>
                <td style="width:20%; border-bottom: solid 1px #c9c9c9; color: #000;">
                    등록시간
                </td>
                <td style="width:10%; border-bottom: solid 1px #c9c9c9; color: #000;">
                    상태
                </td>
                <td style="width:15%; border-bottom: solid 1px #c9c9c9; color: #000;">
                </td>
                </tr>
                <tr align="center" style="background-color: #FFF; border-bottom: solid 1px #c9c9c9; color: #000;">
                    <c:if test="${not empty purchaseAuction.bestPick}">
                        <td style="width:20%; border-bottom: solid 1px #c9c9c9; color: #000; vertical-align: middle;">
                                ${purchaseAuction.bestPick.seller.name}
                        </td>
                        <td style="width:20%; border-bottom: solid 1px #c9c9c9; color: #000; vertical-align: middle;">
                            <c:if test="${purchaseAuction.bestPick.image}">
                                <img style="width:100%" src=${purchaseAuction.bestPick.image} alt=""/>
                            </c:if>
                        </td>
                        <td style="width:15%; border-bottom: solid 1px #c9c9c9; color: #000; vertical-align: middle;">
                                ${purchaseAuction.bestPick.price}
                        </td>
                        <td style="width:15%; border-bottom: solid 1px #c9c9c9; color: #000; vertical-align: middle;">
                                ${purchaseAuction.bestPick.purchaseAuction.deadline.toString().substring(0, 16).replace("T", " ")}
                        </td>
                        <td style="width:15%; border-bottom: solid 1px #c9c9c9; font-weight: 900; vertical-align: middle;">
                                ${purchaseAuction.bestPick.decisionState.toString()}
                        </td>
                        <td style="width:15%; border-bottom: solid 1px #c9c9c9; color: #000; vertical-align: middle;">
                            <c:if test="${purchaseAuction.bestPick.decisionState.toString() eq '반려'}">
                                <input type="button" onClick="location.href='/comment-update'" style="padding:1em; letter-spacing: 0em; line-height: 0em;" value="수정">
                            </c:if>
                        </td>
                    </c:if>
                </tr>
            </table>
            <hr>

            <center>
                <h2 class="mypage" style="margin-bottom: 2em;">물건 제시</h2>
            </center>
            <div class="comment-area">
                <form method="post" action="/api/purchase-auction-participation" enctype="multipart/form-data">
                    <input type="hidden" name="purchaseAuctionId" value="${purchaseAuction.id}">
                    <table style="text-align: center; border: solid 1px #c9c9c9;">
                        <tr style="background-color: #FFF;">
                            <td class="comment-inner" colspan="4">
                                <textarea name="description" id="description" placeholder="상세 설명"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:50%; color: #000;">
                                <input type="text" name="price" id="desired-bid" value="" placeholder="판매 희망가" onfocusout="validateBid()"/>
                                <div id="bid_alert" class="bid-alert">필수 정보입니다.</div>
                            </td>
                            <td style="width:10%; color: #000; text-align:right">
                                <label id="upload-picture" class="button icon fa-upload" for="image" style="letter-spacing:0; overflow: visible;">
                                    사진
                                </label>
                                <input type="file" id="image" name="multipartFile" style="display:none" onchange="onFileUpload(this)" accept="image/*">
                                <div id="file-name"></div>
                            </td>
                            <td style="width:10%; color: #000;">
                                <input type="reset" onclick="resetForm()" class="btn-primary pull" value="초기화">
                            </td>
                            <td style="width:10%; color: #000;">
                                <input type="submit" class="btn-primary pull" value="등록">
                            </td>
                        </tr>
                    </table>
                </form>
            </div>

        </div>
    </div>

    <!--page_footer영역-->
    <jsp:include page="../fragment/footer.jsp"/>

</body>

<style type="">
.comment-area{
    width: calc(70%);
    margin-left:auto;
    margin-right:auto;
}

.comment-inner {
    margin-top:auto;
    margin-bottom:auto;
}

.mypage {
    margin:1em 0 0 0;
    letter-spacing: 0.35em;
}

.user_area {
    width: calc(40%);
    padding: 3em 1em 0 1em;
}

.bid-alert {
    text-align:left;
    color: #ef0003;
    font-size: 16px;
    margin: 5px 0;
    display: none;
}
th, td {
    padding:30px;
}

</style>

<script>
    function validateBid() {
        var bid = document.getElementById('desired-bid').value.trim();
        var alertEl = document.getElementById('bid_alert');

          // 입력 여부 검증
        if (bid.length == 0) {
            alertEl.innerHTML = '필수 정보입니다.';
            alertEl.style.display = 'block';

            return false;
        }
          // 숫자만 가능
        if (!/^[0-9]*$/.test(bid)) {
            alertEl.innerHTML = '숫자만 입력해주세요';
            alertEl.style.display = 'block';
            return false;
            }

        alertEl.style.display = 'none';
    }

    function onFileUpload(file) {
        console.log(file.files[0].name)
        if(file){if(document.getElementById("uploaded-file") != null){
            document.getElementById("uploaded-file").remove();
        }
            let div = document.createElement('div');
            div.id = "uploaded-file"
            let text = document.createTextNode(file.files[0].name);
            div.appendChild(text);
            document.getElementById("file-name").appendChild(div);
        }
    }

    function resetForm() {
        $('form').each(function () {
            this.reset();
        })
        if(document.getElementById("uploaded-file") != null){
            document.getElementById("uploaded-file").remove();
        }
    }

</script>
</html>