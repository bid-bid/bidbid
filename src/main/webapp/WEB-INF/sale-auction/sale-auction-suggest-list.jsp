<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>bidbid</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="shortcut icon" type="image⁄x-icon" href="./resources/images/bidLogo.ico">
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
                                <th>Description</th>
                                <th>Price</th>
                            </tr>
                            </thead>
                            <tbody>
<%--                            <jsp:useBean id="saleAuction" scope="request" class="com.bidbid.dto.saleauction.SaleAuctionRequest" />--%>
                            <c:forEach var="saleAuction" items="${saleAuction}" >
                                <tr>
                                    <td>${saleAuction.title}</td>
                                    <td>${saleAuction.member}</td>
                                    <td>${saleAuction.description}</td>
                                    <td>${saleAuction.price}</td>
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