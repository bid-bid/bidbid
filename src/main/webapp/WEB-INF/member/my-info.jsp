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

    <div id="main" style="padding: 0em 0 3em 0;">
        <center>
            <h1 class="mypage">MY PAGE</h1>
        </center>
        <div class="inner">
            <section class="tiles" style="margin-top: 0; margin-left:auto; margin-right:auto">
                <div style="width: calc(15%);"></div>
                <img class="user_area" src="../resources/images/user.png" alt=""/>
                <div style="width: calc(40%); padding:1em;">
                    <table style="margin-top:4em;">
                        <tr style="background-color: #FFF; border-top: solid 1px #FFF; border-bottom: solid 1px #c9c9c9; color: #000;">
                            <td style="border-bottom: solid 1px #c9c9c9; color: #000;">
                                이름 : ${name}
                            </td>
                        </tr>
                        <tr style="background-color: #FFF; border-bottom: solid 1px #c9c9c9; color: #000;">
                            <td style="border-bottom: solid 1px #c9c9c9; color: #000;">
                                포인트 : ${point}
                            </td>
                        </tr>
                        <tr style="background-color: #FFF; border-bottom: solid 1px #FFF; color: #000;">
                            <td>
                                <a class="charge" href="/charge-point">  포인트 충전 </a>
                            </td>
                        </tr>
                    </table>
                </div>
                <div style="width: calc(10%);"></div>
            </section>
        </div>

        <h2 align="center" style = "margin-top:30px">- 입찰 내역 -</h2>

           <div class="inner" style="border: 1px solid #c9c9c9; margin-bottom:30px; width: calc(60%);">
            <h3 align="center" style = "margin-top:40px">
                <a class= "charge" href="/api/sale-auction/history/bid">
                    >살래요
                </a>
            </h3>

            <h3 align="center" style = "margin-top:40px">
                <a class= "charge" href="/api/purchase-auction/history/bid">
                    >팔래요
                </a>
            </h3>
            
        </div>

        <h2 align="center" style = "margin-top:30px">- 게시 내역 -</h2>

        <div class="inner" style="border: 1px solid #c9c9c9; margin-bottom:30px; width: calc(60%);">
            <h3 align="center" style = "margin-top:40px">
                <a class= "charge" href="/api/sale-auction/history/post">
                    >살래요
                </a>
            </h3>

            <h3 align="center" style = "margin-top:40px">
                <a class= "charge" href="/api/purchase-auction/history/post">
                    >팔래요
                </a>
            </h3>

    </div>

    <!--page_footer영역-->
    <jsp:include page="../fragment/footer.jsp"/>

</body>
<style type="">

    .mypage {
        margin: 1em 0 0 0;
        letter-spacing: 0.35em;
    }

    .user_area {
        width: calc(30%);
        padding: 3em;
    }

    .charge {
        font-weight: 600;
        border-bottom: 0
    }

</style>
</html>
