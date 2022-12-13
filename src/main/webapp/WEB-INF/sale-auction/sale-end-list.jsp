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
                <form method="post" action="#">
                    <section>
                        <h2>마감된 구매권 입찰</h2>
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
                            <th>Category</th>
                            <th>Title</th>
                            <th>Auction Description</th>
                            <th>Auctioneer</th>
                            <th>Buyer</th>
                            <th>End Date</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="purchaseAuction" items="${purchaseAuction}" >
                            <tr>
                                <td>${purchaseAuction.productCategory.toKorean}</td>
                                <td>${purchaseAuction.auctionTitle}</td>
                                <td>${purchaseAuction.description}</td>
                                <td>${purchaseAuction.buyer}</td>
                                <td>${purchaseAuction.bestPick.seller.name}</td>
                                <td>${purchaseAuction.deadline}</td>
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