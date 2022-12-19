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
<!-- Wrapper -->
<div id="wrapper">
    <!-- Header -->
    <jsp:include page="./fragment/header.jsp"/>
    <!-- Menu -->
    <nav id="menu">
        <h2>Menu</h2>
        <ul>
            <li><a href="/">메인화면갈래요</a></li>
            <li><a href="/category">구경할래요</a></li>
            <li><a href="/info">살래요</a></li>
            <li><a href="/info">팔래요</a></li>
        </ul>
    </nav>

    <!-- Main -->
    <div id="main">
        <div class="inner">
            <header style="text-align: center;">
                <h1>CATEGORY</h1>
                <p></p>
            </header>
            <section class="tiles">
                <article class="style1">
                                <span class="image">
                                    <img src="./resources/images/category/fashion.jpg" alt=""/>
                                </span>
                    <a href="/info">
                        <h2>패션</h2>
                        <div class="content">
                            <p>여성의류, 남성의류, 브랜드 패션 등</p>
                        </div>
                    </a>
                </article>
                <article class="style2">
                                <span class="image">
                                    <img src="./resources/images/category/watch.jpg" alt=""/>
                                </span>
                    <a href="generic.html">
                        <h2>패션잡화</h2>
                        <div class="content">
                            <p>신발, 가방, 여행소품, 시계 등</p>
                        </div>
                    </a>
                </article>
                <article class="style3">
                                <span class="image">
                                    <img src="./resources/images/category/food.jpg" alt=""/>
                                </span>
                    <a href="generic.html">
                        <h2>식품ㆍ건강</h2>
                        <div class="content">
                            <p>간식, 육류, 냉동, 비타민 등</p>
                        </div>
                    </a>
                </article>
                <article class="style4">
                                <span class="image">
                                    <img src="./resources/images/category/kitchen.jpg" alt=""/>
                                </span>
                    <a href="generic.html">
                        <h2>생활ㆍ주방</h2>
                        <div class="content">
                            <p>세제, 청소용품, 생활잡화, 욕실용품 등</p>
                        </div>
                    </a>
                </article>
                <article class="style5">
                                <span class="image">
                                    <img src="./resources/images/category/furniture.jpg" alt=""/>
                                </span>
                    <a href="generic.html">
                        <h2>가구ㆍ홈ㆍ데코</h2>
                        <div class="content">
                            <p>침실가구, 블라인드, 침구류 등</p>
                        </div>
                    </a>
                </article>
                <article class="style6">
                                <span class="image">
                                    <img src="./resources/images/category/computer.jpg" alt=""/>
                                </span>
                    <a href="generic.html">
                        <h2>가전ㆍ컴퓨터</h2>
                        <div class="content">
                            <p>TV, 냉장고, 노트북, PC주변기기 등</p>
                        </div>
                    </a>
                </article>
                <article class="style2">
                                <span class="image">
                                    <img src="./resources/images/category/sport.jpg" alt=""/>
                                </span>
                    <a href="generic.html">
                        <h2>스포츠</h2>
                        <div class="content">
                            <p>스포츠 의류, 골프, 자전거, 헬스용품 등</p>
                        </div>
                    </a>
                </article>
                <article class="style3">
                                <span class="image">
                                    <img src="./resources/images/category/hobby.jpg" alt=""/>
                                </span>
                    <a href="generic.html">
                        <h2>반려동물ㆍ취미</h2>
                        <div class="content">
                            <p>반려견 간식, 게임, 악기, 레고 등</p>
                        </div>
                    </a>
                </article>
                <article class="style1">
                                <span class="image">
                                    <img src="./resources/images/category/ticket.jpg" alt=""/>
                                </span>
                    <a href="generic.html">
                        <h2>티켓ㆍ양도권</h2>
                        <div class="content">
                            <p>콘서트 티켓, 숙박권, 뮤지컬 티켓 등</p>
                        </div>
                    </a>
                </article>
                <article class="style5">
                                <span class="image">
                                    <img src="./resources/images/category/book.jpg" alt=""/>
                                </span>
                    <a href="generic.html">
                        <h2>도서</h2>
                        <div class="content">
                            <p>소설, 그림책, 전기, 시, 자기계발 등</p>
                        </div>
                    </a>
                </article>
                <article class="style6">
                                <span class="image">
                                    <img src="./resources/images/category/makeup.jpg" alt=""/>
                                </span>
                    <a href="generic.html">
                        <h2>뷰티</h2>
                        <div class="content">
                            <p>네일 용품, 화장솜, 화장용품 등</p>
                        </div>
                    </a>
                </article>
                <article class="style4">
                                <span class="image">
                                    <img src="./resources/images/category/e-coupon.jpg" alt=""/>
                                </span>
                    <a href="generic.html">
                        <h2>e-쿠폰</h2>
                        <div class="content">
                            <p>기프티콘, 상품권, 쿠폰, 할인권 등</p>
                        </div>
                    </a>
                </article>
            </section>
        </div>
    </div>

    <!-- Footer -->
    <jsp:include page="fragment/footer.jsp"/>
</div>
</body>
</html>