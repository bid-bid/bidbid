<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>bidbid</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="shortcut icon" type="image⁄x-icon" href="/resources/images/bidLogo.ico">
</head>

<body>
<div>
    <!-- Wrapper -->
    <div id="wrapper">
        <jsp:include page="../fragment/header.jsp"/>
        <div id="form">
            <div class="inner">
                <section>
                    <h2>Table</h2>
                    <h3>Default</h3>
                    <div class="table-wrapper">
                        <table>
                            <thead>
                            <tr>
                                <th>Title</th>
                                <th>Member</th>
                                <th>Suggest Description</th>
                                <th>Price</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%--제안들을 저장하는 클래스(엔티티) 필요?--%>
                            <c:forEach var="purchaseAuctionParticipation" items="${purchaseAuctionParticipation}" >
                                <tr>
                                    <td>${purchaseAuctionParticipation.title}</td>
                                    <td>${purchaseAuctionParticipation.seller.name}</td>
                                    <td>${purchaseAuctionParticipation.description}</td>
                                    <td>${purchaseAuctionParticipation.price}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                            <tfoot>
                            <tr>
                                <td colspan="2"></td>
                            </tr>
                            </tfoot>
                        </table>
                    </div>
                </section>
            </div>
        </div>

        <jsp:include page="../fragment/footer.jsp"/>
    </div>
</div>
</body>
</html>
