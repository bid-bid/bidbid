
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
                <form method="post" action="/api/sale-auction">
                    <section>
                        <h2>진행중 구매권 입찰</h2>
                        <button type="button" onclick="location.href='/sale-form' ">구매권 등록</button>
                        <div>
                            <div class="row uniform">
                                <div>
                                    <div class="select-wrapper">
                                        <select name="category" aria-invalid="demo-category">
                                            <option value=""> 카테고리</option>
                                            <option value="CLOTHING">패션</option>
                                            <option value="ACCESSORIES">패션잡화</option>
                                            <option value="FOOD">식품 - 건강</option>
                                            <option value="LIVING">생활 - 주방</option>
                                            <option value="FURNITURE">가구 - 홈 - 데코</option>
                                            <option value="DIGITAL">가전 - 컴퓨터</option>
                                            <option value="SPORTS">스포츠</option>
                                            <option value="HOBBY">반려동물 - 취미</option>
                                            <option value="TICKET">티켓 - 양도권</option>
                                            <option value="BOOK">도서</option>
                                            <option value="BEAUTY">뷰티</option>
                                            <option value="GIFT_CARD">E 쿠폰</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="6u 12u$(xsmall)">
                                    <input type="text" name="auctionTitle" id="auction-title" value=""
                                           placeholder="검색어 입력"/>
                                </div>
                                <div>
                                    <input type="submit" value="검색" class="special"/>
                                </div>
                            </div>
                        </div>
                    </section>
                </form>
                <div class="table-wrapper">
                    <table>
                        <thead>
                        <tr>
                            <th>Title</th>
                            <th>Category</th>
                            <th>Product Name</th>
                            <th>Auction Description</th>
                            <th>Auctioneer</th>
                            <th>Buyer</th>
                            <th>current price </th>
                            <th>End Date</th>
                        </tr>
                        </thead>
                        <tbody>

                        <c:forEach var="saleAuction" items="${saleAuctions}" >
                            <tr  style="cursor: pointer" onclick="location.href='sale-auction/${saleAuction.id}'">
                                <td>${saleAuction.auctionTitle}</td>
                                <td>${saleAuction.productCategory.toKorean}</td>
                                <td>${saleAuction.productName}</td>
                                <td>${saleAuction.description}</td>
                                <td>${saleAuction.seller.name}</td>
                                <td>${saleAuction.bestBuyer.name}</td>
                                <td>${saleAuction.price}</td>
                                <td>${saleAuction.deadline.toString().substring(0,16).replace("T", " ")}</td>
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
            </div>
        </div>

        <!-- Footer -->
        <jsp:include page="../fragment/footer.jsp"/>
    </div>
</div>
</body>
</html>