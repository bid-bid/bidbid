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
        <h1 class="mypage" style="margin-bottom:1em">구매권 입찰</h1>
    </center>
    <div id="main" style="padding: 0em 0 3em 0;">
        <div class="inner">
        <hr>
        <center>
            <h2 class="mypage" style="font-size: 32px; letter-spacing:0;">싸다싸 세탁기 팔아용</h2>
        </center>
            <section class="tiles" style="margin-top: 0; margin-left:auto; margin-right:auto">
                <div style="width: calc(10%);"></div>
                <div class="user_area">
                    <img style="border: 1px solid #c9c9c9; width:100%" src="../resources/images/purchase-auction/1.jpg" alt=""/>
                </div>
                <div style="width: calc(40%); padding:1em;">
                    <table style="margin-top:3em;">
                        <tr style="border-top: solid 1px #FFF; border-bottom: solid 1px #c9c9c9; color: #000;">
                            <td style="border-bottom: solid 1px #c9c9c9; color: #000; font-weight: 600;">
                                경매품 설명
                            </td>
                        </tr>
                        <tr style="border-top: solid 1px #FFF; border-bottom: solid 1px #c9c9c9; color: #000;">
                            <td style="border-bottom: solid 1px #c9c9c9; color: #000;">
                                <!-- 상품명 --!>
                                LG세탁기
                            </td>
                        </tr>
                        <tr style="background-color: #FFF; color: #000;">
                            <td>
                                <!-- 시작가 --!>
                                100000p
                            </td>
                        </tr>
                        <tr style="background-color: #FFF; color: #000; border-bottom: solid 1px #FFF; ">
                            <td style="font-size:16px">
                                가전ㆍ컴퓨터 &nbsp&nbsp 2022-12-02 18:12:20
                            </td>
                        </tr>
                    </table>
                </div>
            </section>
            <section class="tiles" style="margin-top: 0; margin-bottom: 2em; margin-left:auto; margin-right:auto">
                <div style="width: calc(15%);"></div>
                <div style="width: calc(70%); color:#000; font-size: 24px">
                     <!-- 상품 설명 --!>
                     용량: 21kg 에너지효율: 1등급 건조가능 여부: 세탁전용 세탁기 품목: 드럼세탁기 사이즈: (70 x 77 x 99cm) 쿠팡상품번호: 2046782578 - 3479576083
                </div>
            </section>

            <center>
                <h2 class="mypage" style="margin-bottom:1em; color:red;">최고가 입찰자</h2>
                <table style="width:60%; border: solid 1px #FFF; font-weight: 600;">
                    <tr align="center" style="color: #000; background-color: #FFF; border-bottom: solid 1px #FFF;">
                       <td style="width:20%; color: #000; text-align:center;">
                         DEF님
                       </td>
                       <td style="width:20%; color: #000; text-align:center;">
                          15000p
                       </td>
                       <td style="width:30%; color: #000; text-align:center;">
                          2022-12-02 14:20:12
                       </td>
                    </tr>
                </table>
            </center>
            <hr>

            <center>
                <h2 class="mypage" style="margin-bottom: 2em;">가격 제시</h2>
            </center>
            <div class="comment-area">
                <form method="post" action="">
                    <table style="text-align: center; border: solid 1px #c9c9c9;">
                        <tr style="background-color: #FFF;">
                            <td class="comment-inner" style="width:25%; border-bottom: solid 1px #c9c9c9; color: #000;">
                                <!-- 유저ID --!>
                                비드비드
                            </td>
                            <td style="width:50%; color: #000;">
                                <!-- 가격 부분 --!>
                                <input type="text" name="price" id="desired-bid" value="" placeholder="희망가" onfocusout="validateBid()"/>
                                <div id="bid_alert" class="bid-alert">필수 정보입니다.</div>
                            </td>
                            <td style="width:25%; border-bottom: solid 1px #c9c9c9; color: #000;">
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
</html>

<style type="">
.comment-area{
    width: calc(60%);
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
</script>
