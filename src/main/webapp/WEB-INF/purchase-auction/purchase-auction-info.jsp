<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<head>
    <title>bidbid</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="shortcut icon" type="image⁄x-icon" href="/resources/images/bidLogo.ico">
</head>
<body>
<!-- Wrapper -->
<div id="wrapper">
    <!-- Header -->
    <jsp:include page="../fragment/header.jsp"/>

    <div id="main" style="padding: 0em 0 2em 0;">
        <div class="inner">
            <!-- 제목 / 판매권입찰, 카테고리, 등록시간 -->
            <h1 class="mypage" style="letter-spacing:0;">${purchaseAuction.auctionTitle}</h1>
            <h3 style="letter-spacing:0; margin: 0;">&nbsp ${purchaseAuction.buyer.name}</h3>

            &nbsp 판매권입찰 ㆍ ${purchaseAuction.productCategory.toKorean} ㆍ ${purchaseAuction.deadline.toString().substring(0,10)} ${purchaseAuction.deadline.toString().substring(11,16)}
            <hr style="margin-top:1em">

            <!-- 설명 -->
            <div style="padding:0.5em">
                ${purchaseAuction.description}
            </div>
            <hr>

            <h2 class="mypage" style="font-size: 30px; letter-spacing:0; margin-bottom:1.2em;">미확인 물품</h2>

            <!-- for문 사용 -->
            <table style="width:30%; margin:1em 0 0 0; ">
                <tr style="border-top: solid 1px #FFF; border-bottom: solid 1px #FFF; background-color: #FFF; color: #000;">
                    <c:forEach var="pap" items="${purchaseAuctionParticipation}">
                    <td colspan="2" style="width:30%; color: #000; text-align:left; border: solid 1px #FFF;">
                        <table style="width:25%; margin:1em 0 0 0; ">
                            <tr style="border-top: solid 1px #FFF; border-bottom: solid 1px #FFF; background-color: #FFF; color: #000;">
                                <td style="color: #000; text-align:left; border: solid 1px #c9c9c9;">
                                    <span class="image main" style="margin: 0 0 0em 0">
                                        <img style="height:200px; width:100%" src="${pap.image}" alt=""/>
                                        제시 가격 : ${pap.price} <br>
                                        설명 : ${pap.description} <br><br>

                                        <ul class="btnsBox">
                                            <form action="/api/purchase-auction-participation/${pap.id}/best-pick" method="post">
                                                <li><button class="btnbox" style="padding: 0 5em 0 5em " onclick="change_btn(event)">승인</button></li>
                                            </form>
                                            <form action="/api/purchase-auction-participation/${pap.id}/dismiss" method="post">
                                                <li><button class="btnbox" style="padding: 0 5em 0 5em " onclick="change_btn(event)">반려</button></li>
                                            </form>
                                        </ul>

                                    </span>
                                </td>
                            </tr>
                        </table>
                    </td>
                    </c:forEach>

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

.btnsBox {
	font-size: 0;
}
.btnsBox li {
	display: inline-block;
	margin-left: -1px;
}
.btnsBox li:first-child {
	margin-left: 0;
}
.btnbox {
	width: 100%;
	height: 100%;
	font-size: 12px;
	color: #F36F21;
	border: 1px solid #F47820;
	background-color: #fff;
}
.btnbox:hover, .btnbox.active {
	background: #FFE0C9;
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

      function change_btn(e) {
      	var btns = document.querySelectorAll(".btnbox");
      	btns.forEach(function(btn, i) {
      		if(e.currentTarget == btn) {
      			btn.classList.add("active");
      		}
      		else {
      			btn.classList.remove("active");
      		}
      	});
      	console.log( e.currentTarget );
      }
</script>
</html>
