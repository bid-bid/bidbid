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

        <h2 align="center" style="margin-top:30px">- 살래요 -</h2>

        <div class="inner" style="border: 1px solid #c9c9c9; margin-bottom:50px;">
            <h3 align="center" style="margin-top:40px">경매 내역</h3>
            <table>
                <thead>
                    <tr align="center" style="background-color: #f6f6f6; border-bottom: solid 1px #c9c9c9; color: #000;">
                        <td style="width:25%; border-bottom: solid 1px #c9c9c9; color: #000;">
                            제목
                        </td>
                        <td style="width:25%; border-bottom: solid 1px #c9c9c9; color: #000;">
                            희망상품
                        </td>
                        <td style="width:25%; border-bottom: solid 1px #c9c9c9; color: #000;">
                            낙찰자
                        </td>
                        <td style="width:25%; border-bottom: solid 1px #c9c9c9; color: #000;">
                            낙찰가
                        </td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="saleAuctions" items="${saleAuctions}">
                        <tr align="center" style="background-color: #FFF; border-bottom: solid 1px #c9c9c9; color: #000;" onclick="location.href='../${saleAuctions.id}'">
                            <td style="width:25%; border-bottom: solid 1px #c9c9c9; color: #000;">
                                    ${saleAuctions.auctionTitle}
                            </td>
                            <td style="width:25%; border-bottom: solid 1px #c9c9c9; color: #000;">
                                    ${saleAuctions.productName}
                            </td>
                            <td style="width:25%; border-bottom: solid 1px #c9c9c9; color: #000;">
                                    ${saleAuctions.bestBuyer.name}
                            </td>
                            <td style="width:25%; border-bottom: solid 1px #c9c9c9; color: #000;">
                                    ${saleAuctions.price}
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <center>
            <input type="button" onClick="location.href='/api/members'" style="padding:1em; letter-spacing: 0em; line-height: 0em;" value="돌아가기">
        </center>
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
