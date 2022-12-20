<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

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

    <div id="main" style="padding: 0em 0 2em 0;">
        <div class="inner">
            <!-- 제목 / 판매권입찰, 카테고리, 등록시간 --!>
            <h1 class="mypage" style="letter-spacing:0;">${purchaseAuction.auctionTitle}</h1>
            <h3 style="letter-spacing:0; margin: 0;">&nbsp ${purchaseAuction.buyer.name}</h3>

            &nbsp 판매권입찰 ㆍ ${purchaseAuction.productCategory.toKorean} ㆍ ${fn:substring(purchaseAuction.deadline,0,10)} ${fn:substring(purchaseAuction.deadline,11,16)}
            <hr style="margin-top:1em">

            <!-- 설명 --!>
            <div style="padding:0.5em">
                ${purchaseAuction.description}
            </div>
            <hr>

            <h2 class="mypage" style="font-size: 30px; letter-spacing:0; margin-bottom:1.2em;">판매권 등록</h2>
            <form method="post" action="/api/purchase-auction-participation">
                <table style="margin:1em 0 0 0; ">
                    <tr style="border-top: solid 1px #FFF; border-bottom: solid 1px #c9c9c9; color: #000;">
                       <td style="color: #000; text-align:left">
                            <label id="upload-picture" class="button icon fa-upload" for="product-picture" style="letter-spacing:0; overflow: visible; margin:0">
                                사진
                            </label>
                            <input type="file" id="product-picture" style="display:none" onchange="setThumbnail(event, this)" accept="image/*">
                            <div id="file-name" style="display: inline-block; margin-left: 0.5em;"></div>
                            <div id="image_container" style="text-align: center;"></div>
                        </td>
                    </tr>
                    <tr style="border-top: solid 1px #FFF; border-bottom: solid 1px #c9c9c9; color: #000;">
                        <td style="border-bottom: solid 1px #c9c9c9; color: #000;">
                            ${purchaseAuction.buyer.name}
                        </td>
                    </tr>
                    <tr style="background-color: #FFF; color: #000; border-bottom: solid 1px #FFF; ">
                        <td style="color: #000; padding: 0.75em 0em;">
                            <input type="text" name="desired-bid" id="desired-bid" style="padding-left:0.5em" value="" placeholder="판매 희망가" onfocusout="validateBid()"/>
                            <div id="bid_alert" class="bid-alert">필수 정보입니다.</div>
                        </td>
                    </tr>
                    <tr style="background-color: #FFF; color: #000; border-bottom: solid 1px #FFF; ">
                        <td style="color: #000; padding: 0.75em 0em;">
                            <textarea name="description-bid" id="description-bid" style="padding-left:0.5em" placeholder="상세 설명"></textarea>
                        </td>
                    </tr>
                    <tr style="background-color: #FFF; color: #000; border-bottom: solid 1px #FFF; ">
                        <td style="border-bottom: solid 1px #FFF; color: #000;">
                            <center>
                                <input type="submit" class="btn-primary pull" style="padding: 0 10em 0 10em;" value="등록">
                            </center>
                        </td>
                    </tr>
                </table>
            </form>

            <hr>
            <center>
                <h2 class="mypage" style="margin-bottom:1em;">입찰 예정 물품</h2>
            </center>

            <c:if test="${purchaseAuction.bestPick}">
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
                                ${purchaseAuction.deadline}
                        </td>
                        <td style="width:15%; border-bottom: solid 1px #c9c9c9; font-weight: 900; vertical-align: middle;">
                                ${purchaseAuction.bestPick.decisionState.toKorean}
                        </td>
                        <td style="width:15%; border-bottom: solid 1px #c9c9c9; color: #000; vertical-align: middle;">
                            <c:if test="${purchaseAuction.bestPick.decisionState.toKorean eq '반려'}">
                                <input type="button" onClick="location.href='/comment-update'" style="padding:1em; letter-spacing: 0em; line-height: 0em;" value="수정">
                            </c:if>
                        </td>
                    </tr>
                </table>
            </c:if>

            <c:if test="${empty purchaseAuction.bestPick}">
                <center>
                    <h3 class="mypage" style="margin-bottom:1em;">입찰 예정 물품 없어요</h3>
                </center>
            </c:if>
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
    margin: 1em 0 0.2em 0;
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
    padding-left:0.8em;
    display: none;
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
     //썸네일
    function setThumbnail(event, file) {
        if(file){if(document.getElementById("uploaded-file") != null){
                document.getElementById("uploaded-file").remove();
            }
                let div = document.createElement('div');
                div.id = "uploaded-file"
                let text = document.createTextNode(file.files[0].name);
                div.appendChild(text);
                document.getElementById("file-name").appendChild(div);
            }

        var reader = new FileReader();

        reader.onload = function(event) {
          var img = document.createElement("img");
          img.setAttribute("src", event.target.result);
          img.setAttribute("style", "width:570px");
          document.querySelector("div#image_container").appendChild(img);
        };
        reader.readAsDataURL(event.target.files[0]);
      }
</script>
</html>
