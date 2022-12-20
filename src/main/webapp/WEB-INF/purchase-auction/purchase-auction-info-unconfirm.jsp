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

    <center>
        <h1 class="mypage" style="margin-bottom:1em">판매권 입찰</h1>
    </center>

    <div id="main" style="padding: 0em 0 2em 0;">
        <div class="inner">
            <section class="tiles" style="margin-top: 0; margin-left:auto; margin-right:auto">
                <div style="width: calc(5%);"></div>
                <div style="width: calc(40%); padding:1em;">
                    <h2 class="mypage" style="font-size: 32px; letter-spacing:0">ㆍ${purchaseAuction.auctionTitle}</h2>
                    <table style="margin:1em 0 0 0; ">
                        <tr style="border-top: solid 1px #FFF; border-bottom: solid 1px #c9c9c9; color: #000;">
                            <td colspan="2" style="border-bottom: solid 1px #c9c9c9; color: #000; font-weight: 600;">
                                ${purchaseAuction.productName}
                            </td>
                        </tr>
                        <tr style="border-top: solid 1px #FFF; border-bottom: solid 1px #c9c9c9; color: #000;">
                            <td colspan="2" style="border-bottom: solid 1px #c9c9c9; color: #000; height:310px">
                                ${purchaseAuction.description}
                            </td>
                        </tr>
                        <tr style="background-color: #FFF; color: #000; border-bottom: solid 1px #FFF; ">
                            <td style="font-size:16px">
                                ${purchaseAuction.productCategory.toKorean}
                            </td>
                            <td style="font-size:16px; text-align:right">
                                ${fn:substring(purchaseAuction.deadline,0,16)}
                            </td>
                        </tr>
                    </table>
                </div>

                <div style="width: calc(50%); padding:1em;">
                    <h2 class="mypage" style="font-size: 32px; letter-spacing:0; margin-bottom:1.2em;">ㆍ물건 제시</h2>
                    <form method="post" action="/api/purchase-auction-participation">
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
                                    ${purchaseAuctionParticipation.purchaseAuctionId} id보다 이름이 낫지 않은지..!
                                </td>
                            </tr>
                            <tr style="border-top: solid 1px #FFF; border-bottom: solid 1px #c9c9c9; color: #000; background-color: #FFF;">
                                <td style="color: #000; width:70%;">
                                    가격 : ${purchaseAuctionParticipation.price}
                                </td>
                                <td style="border-bottom: solid 1px #FFF; font-weight: 900; color: #000; width:10%;">

                                </td>
                                <td style="border: solid 1px #000; width:20%; font-weight: 900; color: #000; text-align:center; background-color: #FFFF99;">
                                    미확인
                                </td>
                            </tr>
                            <tr style="background-color: #FFF; color: #000; border-bottom: solid 1px #FFF; ">
                                <td colspan="3" style="width:40%; color: #000;">
                                    ${purchaseAuctionParticipation.description} 설명
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </section>

            <hr>
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
                    <c:if test="${purchaseAuction.bestPick}">
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
                    </c:if>
                </tr>
            </table>
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