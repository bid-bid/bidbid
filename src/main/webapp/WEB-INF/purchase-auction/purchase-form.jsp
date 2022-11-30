<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>bidbid</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="shortcut icon" type="image⁄x-icon" href="./resources/images/bid.ico">
    <link rel="stylesheet" href="./resources/css/main.css" rel="stylesheet" type="text/css"/>
    <script src="./resources/js/jquery.min.js"></script>
    <script src="./resources/js/skel.min.js"></script>
    <script src="./resources/js/util.js"></script>
    <script src="./resources/js/main.js"></script>
</head>

<body>
<div>
    <!-- Wrapper -->
    <div id="wrapper">
        <jsp:include page="../fragment/header.jsp"/>

        <div id="form">
            <div class="inner">
                <form method="post" action="/api/purchase-auction">
                    <section>
                        <h2>구매 경매 등록</h2>
                        <div>
                            <div class="row uniform">
                                <div class="6u 12u$(xsmall)">
                                    <input type="text" name="auctionTitle" id="auction-title" value=""
                                           placeholder="경매 제목"/>
                                </div>
                                <div class="6u 12u$(xsmall)">
                                    <input type="text" name="productName" id="product-name" value=""
                                           placeholder="희망 상품"/>
                                </div>
                                <div class="12u$">
                                    <textarea name="description" id="description" placeholder="상세 설명"></textarea>
                                </div>
                                <div>
                                    <div class="select-wrapper">
                                        <select name="category" aria-invalid="demo-category">
                                            <option value="NONE"> 카테고리</option>
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
                                            <option value="GITF_CARD">E 쿠폰</option>
                                        </select>
                                    </div>
                                </div>
                                <div id="desired-amount">
                                    <input type="text" name="amount" id="amount" value=""
                                           onkeydown="filterNumber(this, event)" placeholder=" 시작가 (원)"/>
                                </div>
                                <div class="12u$">
                                    <ul class="actions">
                                        <li><input type="submit" value="등록" class="special"/></li>
                                        <li><input type="reset" value="초기화" onclick="resetForm"/></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </section>
                </form>
            </div>
        </div>

        <!-- Footer -->
        <footer id="footer">
            <div class="inner">
                <section>
                    <h2>Get in touch</h2>
                    <form method="post" action="#">
                        <div class="field half first">
                            <input type="text" name="name" id="name" placeholder="Name"/>
                        </div>
                        <div class="field half">
                            <input type="email" name="email" id="email" placeholder="Email"/>
                        </div>
                        <div class="field">
                            <textarea name="message" id="message" placeholder="Message"></textarea>
                        </div>
                        <ul class="actions">
                            <li><input type="submit" value="Send" class="special"/></li>
                        </ul>
                    </form>
                </section>
                <section>
                    <h2>Follow</h2>
                    <ul class="icons">
                        <li><a href="#" class="icon style2 fa-twitter"><span class="label">Twitter</span></a></li>
                        <li><a href="#" class="icon style2 fa-facebook"><span class="label">Facebook</span></a></li>
                        <li><a href="#" class="icon style2 fa-instagram"><span class="label">Instagram</span></a></li>
                        <li><a href="#" class="icon style2 fa-dribbble"><span class="label">Dribbble</span></a></li>
                        <li><a href="#" class="icon style2 fa-github"><span class="label">GitHub</span></a></li>
                        <li><a href="#" class="icon style2 fa-500px"><span class="label">500px</span></a></li>
                        <li><a href="#" class="icon style2 fa-phone"><span class="label">Phone</span></a></li>
                        <li><a href="#" class="icon style2 fa-envelope-o"><span class="label">Email</span></a></li>
                    </ul>
                </section>
                <ul class="copyright">
                    <li>&copy; Untitled. All rights reserved</li>
                    <li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
                </ul>
            </div>
        </footer>
    </div>
</div>
</body>
<script>
    function filterNumber(element, event) {
        element.value = element.value.replace(/[^0-9]/g, "");
        let code = event.keyCode;
        if ((code > 47 && code < 58) || event.ctrlKey || event.altKey || code == 8 || code == 9 || code == 46) {
            return;
        }
        event.preventDefault();
        return false;
    }

    function resetForm() {
        $('form').each(function () {
            this.reset();
        })
        return '';
    }
</script>
</html>