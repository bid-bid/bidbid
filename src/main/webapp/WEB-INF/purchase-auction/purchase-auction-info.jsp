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
            <h2 class="mypage">[제목]</h2>
        </center>
            <section class="tiles" style="margin-top: 0; margin-left:auto; margin-right:auto">
                <div style="width: calc(10%);"></div>
                <div class="user_area">
                    <img style="border: 1px solid #c9c9c9; width:100%" src="../resources/images/purchase-auction/1.jpg" alt=""/>
                </div>
                <div style="width: calc(40%); padding:1em;">
                    <table style="margin-top:4em;">
                        <tr style="border-top: solid 1px #FFF; border-bottom: solid 1px #c9c9c9; color: #000;">
                            <td style="border-bottom: solid 1px #c9c9c9; color: #000;">
                                [희망상품명]
                            </td>
                        </tr>
                        <tr style="background-color: #FFF; color: #000;">
                            <td>
                                [시작가]
                            </td>
                        </tr>
                        <tr style="background-color: #FFF; color: #000;">
                            <td>
                                [카테고리]
                            </td>
                        </tr>
                        <tr style="background-color: #FFF; border-bottom: solid 1px #FFF; color: #000;">
                            <td style="font-size:16px;">
                                2022-12-02 18:12:20
                            </td>
                        </tr>
                    </table>
                </div>
            </section>
            <section class="tiles" style="margin-top: 1em; margin-bottom: 2em; margin-left:auto; margin-right:auto">
                <div style="width: calc(15%);"></div>
                <div style="width: calc(70%); color:#000;">
                     [상품설명] 예시</br> 용량: 21kg 에너지효율: 1등급 건조가능 여부: 세탁전용 세탁기 품목: 드럼세탁기 사이즈: (70 x 77 x 99cm) 쿠팡상품번호: 2046782578 - 3479576083
                </div>
            </section>

            <center>
                <h2 class="mypage" style="margin-bottom:1em;">입찰 희망자</h2>
            </center>
            <table>
                <tr align="center" style="background-color: #f6f6f6; border-bottom: solid 1px #c9c9c9; color: #000;">
                   <td style="width:20%; border-bottom: solid 1px #c9c9c9; color: #000;">
                      입찰자
                   </td>
                   <td style="width:20%; border-bottom: solid 1px #c9c9c9; color: #000;">
                     입찰가
                   </td>
                   <td style="width:30%; border-bottom: solid 1px #c9c9c9; color: #000;">
                     등록시간
                   </td>
                   <td style="width:15%; border-bottom: solid 1px #c9c9c9; color: #000;">
                      상태
                   </td>
                   <td style="width:15%; border-bottom: solid 1px #c9c9c9; color: #000;">

                  </td>
                </tr>
                <tr align="center" style="background-color: #FFF; border-bottom: solid 1px #c9c9c9; color: #000;">
                   <td style="width:20%; border-bottom: solid 1px #c9c9c9; color: #000;">
                     DEF님
                   </td>
                   <td style="width:20%; border-bottom: solid 1px #c9c9c9; color: #000;">
                      15000p
                   </td>
                   <td style="width:30%; border-bottom: solid 1px #c9c9c9; color: #000;">
                      2022-12-02 14:20:12
                   </td>
                   <td style="width:15%; border-bottom: solid 1px #c9c9c9; font-weight: 900; color: blue;">
                        <c:if test="${state eq '0'}">
                           선정
                        </c:if>
                        <c:if test="${state eq '1'}">
                           반려
                        </c:if>
                   </td>
                   <td style="width:15%; border-bottom: solid 1px #c9c9c9; color: #000;">
                       <input type="button" onClick="location.href='/comment-update'" style="padding: 6px; letter-spacing:0; height:2em; line-height:0;" value="수정">
                       <input type="submit" style="padding: 6px; letter-spacing:0; height:2em; line-height:0;" value="삭제">
                    </td>
                </tr>
            </table>
            <hr>

            <center>
                <h2 class="mypage" style="margin-bottom: 2em;">가격 제시</h2>
            </center>
            <div class="comment-area">
                <form method="post" action="">
                    <table style="text-align: center; border: solid 1px #c9c9c9;">
                        <tr style="background-color: #FFF;">
                            <td class="comment-inner" style="width:25%; border-bottom: solid 1px #c9c9c9; color: #000;">
                                [유저이름]
                            </td>
                            <td style="width:50%; color: #000;">
                                <input type="text" name="desired-bid" id="desired-bid" value="" placeholder="희망가" onfocusout="validateBid()"/>
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