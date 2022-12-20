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
            <h1 class="mypage" style="letter-spacing:0;">${purchaseAuction.purchaseAuction.auctionTitle}</h1>
            <h3 style="letter-spacing:0; margin: 0;">&nbsp ${purchaseAuction.purchaseAuction.buyer.name}</h3>

            &nbsp 판매권입찰 ㆍ ${purchaseAuction.purchaseAuction.productCategory.toKorean} ㆍ ${fn:substring(purchaseAuctionParticipation.purchaseAuction.deadline,0,10)} ${fn:substring(purchaseAuctionParticipation.purchaseAuction.deadline,11,16)}
            <hr style="margin-top:1em">

            <!-- 설명 --!>
            <div style="padding:0.5em">
                ${purchaseAuction.purchaseAuction.description}
            </div>
            <hr>

            <h2 class="mypage" style="font-size: 30px; letter-spacing:0; margin-bottom:1.2em;">${purchaseAuction.purchaseAuction.buyer.name}님의 입찰 현황</h2>
            <form method="post" action="/api/purchase-auction-participation" enctype="multipart/form-data">
                <input type="hidden" name="purchaseAuctionId" value="${purchaseAuction.purchaseAuction.id}"/>
                <table style="margin:1em 0 0 0; ">
                    <tr style="border-top: solid 1px #FFF; border-bottom: solid 1px #FFF; background-color: #FFF; color: #000;">
                       <td colspan="3" style="width:30%; color: #000; text-align:left; border: solid 1px #c9c9c9;">
                            <span class="image main" style="margin: 0 0 0em 0">
                                <img style="height:400px" src="/resources/images/banner.png" alt=""/>
                            </span>
                        </td>
                    </tr>
                    <tr style="background-color: #FFF; color: #000; border-bottom: solid 1px #FFF; ">
                        <td colspan="3" style="width:40%; color: #000;">

                        </td>
                    </tr>
                    <tr style="border-top: solid 1px #FFF; border-bottom: solid 1px #c9c9c9; color: #000; background-color: #FFF;">
                        <td style="color: #000; width:60%;">
                            제시 가격 : ${purchaseAuction.price}
                        </td>
                        <td style="border-bottom: solid 1px #FFF; font-weight: 900; color: #000; width:15%; text-align:right;">
                           결과 :
                        </td>
                        <td style="width:15%; font-weight: 900; color: #FFF; text-align:center; background-color: #CC0000;">
                            반려
                        </td>
                    </tr>
                    <tr style="background-color: #FFF; color: #000; border-bottom: solid 1px #FFF; ">
                        <td colspan="3" style="width:40%; color: #000;">
                            ${purchaseAuction.description}
                        </td>
                    </tr>
                </table>
            </form>

            <hr>
            <center>
                <h2 class="mypage" style="margin-bottom:1em;">입찰 예정 물품</h2>
            </center>

            <c:if test="${purchaseAuction.purchaseAuction.bestPick}">
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
                                ${purchaseAuction.purchaseAuction.bestPick.seller.name}
                        </td>
                        <td style="width:20%; border-bottom: solid 1px #c9c9c9; color: #000; vertical-align: middle;">
                            <c:if test="${purchaseAuction.purchaseAuction.bestPick.image}">
                                <img style="width:100%" src=${purchaseAuction.purchaseAuction.bestPick.image} alt=""/>
                            </c:if>
                        </td>
                        <td style="width:15%; border-bottom: solid 1px #c9c9c9; color: #000; vertical-align: middle;">
                                ${purchaseAuction.purchaseAuction.bestPick.price}
                        </td>
                        <td style="width:15%; border-bottom: solid 1px #c9c9c9; color: #000; vertical-align: middle;">
                                ${purchaseAuction.purchaseAuction.deadline}
                        </td>
                        <td style="width:15%; border-bottom: solid 1px #c9c9c9; font-weight: 900; vertical-align: middle;">
                                ${purchaseAuction.purchaseAuction.bestPick.decisionState.toKorean}
                        </td>
                        <td style="width:15%; border-bottom: solid 1px #c9c9c9; color: #000; vertical-align: middle;">
                            <c:if test="${purchaseAuction.purchaseAuction.bestPick.decisionState.toKorean eq '반려'}">
                                <input type="button" onClick="location.href='/comment-update'" style="padding:1em; letter-spacing: 0em; line-height: 0em;" value="수정">
                            </c:if>
                        </td>
                    </tr>
                </table>
            </c:if>

            <c:if test="${empty purchaseAuction.purchaseAuction.bestPick}">
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
</script>
</html>
