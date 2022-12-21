<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

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
                <h2 class="mypage" style="margin-bottom:50px; font-size: 40px; letter-spacing:0;">${saleAuction.auctionTitle}</h2>
            </center>


                <div style="text-align: center">
                    <img style="border: 1px solid #c9c9c9; width:100%" src="${saleAuction.image}" alt=""/>
                </div>

                    <table style="margin-top:3em; border:1px solid#000">
                        <tr style="border-top: solid 1px #000; border-bottom: solid 1px #c9c9c9; color: #000;">
                            <td style=" color: #000; font-weight: 600;">
                                상품명
                            </td>
                            <th >
                                ${saleAuction.productName}
                            </th>
                        </tr>

                        <tr style="border-top: solid 1px #FFF; border-bottom: solid 1px #c9c9c9; color: #000;">
                            <td style=" color: #000; font-weight: 600;">
                                카테고리
                            </td>
                            <th >
                                ${saleAuction.productCategory.toKorean}
                            </th>
                        </tr>

                        <tr style="border-top: solid 1px #FFF; border-bottom: solid 1px #c9c9c9; color: #000;">
                            <td style=" color: #000; font-weight: 600;">
                                마감기한
                            </td>
                            <th>
                                ${saleAuction.deadline.toString().substring(0,16)}
                            </th>
                        </tr>


                        <tr style="border-top: solid 1px #FFF; border-bottom: solid 1px #000; color: #000;">
                            <td style=" color: #000; font-weight: 600;">
                                상품 설명
                            </td>
                            <th >
                                ${saleAuction.description}
                            </th>
                        </tr>

                    </table>




            <center>
                <h2 class="mypage" style="margin-bottom:1em; color:red;">최고 입찰가 : ${saleAuction.price}</h2>

            </center>
            <hr>

            <sec:authentication property="principal" var="prc"/>
            <c:if test="${prc.username ne saleAuction.seller.email}">
                <c:if test="${prc.username ne saleAuction.bestBuyer.email}">
                <center>
                    <h2 class="mypage" style="margin-bottom: 2em;">가격 제시</h2>
                </center>
                <div class="comment-area">
                    <form method="post" action="/api/sale-auction/${saleAuction.id}/renewal-bid">
                        <table style="text-align: center; border: solid 1px #c9c9c9;">
                            <tr style="background-color: #FFF;">

                                <td style="width:50%; color: #000;">
                                    <!-- 가격 부분 --!>
                                    <input type="text" name="point" id="desired-bid" value="" placeholder="희망가" onfocusout="validateBid()"/>
                                    <div id="bid_alert" class="bid-alert">필수 정보입니다.</div>
                                </td>
                                <td style="width:25%; border-bottom: solid 1px #c9c9c9; color: #000;  vertical-align:middle;">


                                    <input type="submit" id="btn-primary-pull" value="등록">

                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
                </c:if>
            </c:if>

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
        var button=document.getElementById('btn-primary-pull');
        // 입력 여부 검증
        if (bid.length == 0) {
            alertEl.innerHTML = '필수 정보입니다.';
            alertEl.style.display = 'block';
            button.disabled=true;
            return false;
        }
        // 숫자만 가능
        if (!/^[0-9]*$/.test(bid)) {
            alertEl.innerHTML = '숫자만 입력해주세요';
            alertEl.style.display = 'block';
            button.disabled=true;
            return false;
        }
        if(bid<${saleAuction.price}){
            alertEl.innerHTML = '가격을 다시 입력해주세요';
            alertEl.style.display = 'block';
            button.disabled=true;
            return false;
        }
        button.disabled=false;

        alertEl.style.display = 'none';
    }
</script>
