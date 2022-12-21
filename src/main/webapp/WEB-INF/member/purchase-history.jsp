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

        <h2 align="center" style="margin-top:30px">- 팔래요 -</h2>

        <div class="inner" style="border: 1px solid #c9c9c9; margin-bottom:50px;">
            <h3 align="center" style="margin-top:40px">입찰 내역</h3>
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
                    <c:forEach var="purchaseAuctions" items="${purchaseAuctions}">
                        <tr align="center" style="background-color: #FFF; border-bottom: solid 1px #c9c9c9; color: #000;" onclick="location.href='../${purchaseAuctions.id}'">
                            <td style="width:25%; border-bottom: solid 1px #c9c9c9; color: #000;">
                                    ${purchaseAuctions.auctionTitle}
                            </td>
                            <td style="width:25%; border-bottom: solid 1px #c9c9c9; color: #000;">
                                    ${purchaseAuctions.productName}
                            </td>
                            <td style="width:25%; border-bottom: solid 1px #c9c9c9; color: #000;">
                                    ${purchaseAuctions.bestPick.seller.name}
                            </td>
                            <td style="width:25%; border-bottom: solid 1px #c9c9c9; color: #000;">
                                    ${purchaseAuctions.bestPick.price}
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <h3 align="center" style="margin-top:40px">반려 내역</h3>
            <table>
                <thead>
                    <tr align="center" style="background-color: #f6f6f6; border-bottom: solid 1px #c9c9c9; color: #000;">
                        <td style="width:25%; border-bottom: solid 1px #c9c9c9; color: #000;">
                            구매 희망자
                        </td>
                        <td style="width:25%; border-bottom: solid 1px #c9c9c9; color: #000;">
                            제목
                        </td>
                        <td style="width:25%; border-bottom: solid 1px #c9c9c9; color: #000;">
                            희망상품
                        </td>
                        <td style="width:25%; border-bottom: solid 1px #c9c9c9; color: #000;">
                            승인 여부
                        </td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="purchaseAuctionParticipation" items="${purchaseAuctionParticipation}">
                        <tr align="center" style="background-color: #FFF; border-bottom: solid 1px #c9c9c9; color: #000;" onclick="location.href='../${purchaseAuctionParticipation.purchaseAuction.id}'">
                            <td style="width:25%; border-bottom: solid 1px #c9c9c9; color: #000;">
                                ${purchaseAuctionParticipation.seller.name}
                            </td>
                            <td style="width:25%; border-bottom: solid 1px #c9c9c9; color: #000;">
                                ${purchaseAuctionParticipation.purchaseAuction.auctionTitle}
                            </td>
                            <td style="width:25%; border-bottom: solid 1px #c9c9c9; color: #000;">
                                ${purchaseAuctionParticipation.purchaseAuction.productName}
                            </td>
                            <td style="width:25%; border-bottom: solid 1px #c9c9c9; color: red;">
                                ${purchaseAuctionParticipation.decisionState}
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
