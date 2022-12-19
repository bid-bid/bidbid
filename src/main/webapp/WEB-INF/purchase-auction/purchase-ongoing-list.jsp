<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.bidbid.entity.purchaseauction.PurchaseAuction" %>
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
                <form method="get" action="/api/purchase-auction?filter=category">
                    <input type="hidden" name="filter" value="category">
                    <section>
                        <h2>진행중 판매권 입찰</h2>
                        <button type="button" onclick="location.href='/purchase-form'">판매권 등록</button>
                        <div>
                            <div class="row uniform">
                                <div>
                                    <div class="select-wrapper">
                                        <select name="category" aria-invalid="demo-category" onclick="hasSearchValue()">
                                            <option value="NONE">카테고리</option>
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
                                    <input type="text" name="product-name" id="product-name" onkeyup="hasSearchValue()" value="" placeholder="검색어 입력"/>
                                </div>
                                <div>
                                    <input id="search-submit" type="submit" value="검색" disabled="true" class="special"/>
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
                            <th>Product</th>
                            <th>Category</th>
                            <th>Auction Description</th>
                            <th>Auctioneer</th>
                            <th>Seller</th>
                            <th>End Date</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="purchaseAuctions" items="${purchaseAuctions}" >
                            <tr>
                                <td><a href="http://localhost:8080/api/purchase-auction/${purchaseAuctions.id}">${purchaseAuctions.auctionTitle}</a></td>
                                <td>${purchaseAuctions.productName}</td>
                                <td>${purchaseAuctions.productCategory.toKorean}</td>
                                <td>${purchaseAuctions.description}</td>
                                <td>${purchaseAuctions.buyer.name}</td>
                                <td>${purchaseAuctions.bestPick.seller.name}</td>
                                <td>${purchaseAuctions.deadline.toString().substring(0, 16).replace("T", " ")}</td>
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
<script>
    function toInfoPage(id) {
        $.ajax({
            url: "http://localhost:8080/api/purchase-auction/" + id,
            type: "GET",
        });
    }
    function hasSearchValue() {
        if ($('select[name=category]').val() === "NONE" && $('#product-name').val().trim() === "") {
            $('#search-submit').attr("disabled", true);
        } else {
            $('#search-submit').attr("disabled", false);
        }

    }
</script>
</html>