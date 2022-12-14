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
    <header id="header" style="padding: 3em 0 0em 0;">
        <div class="inner">
            <!-- Logo -->
            <a href="/" class="logo">
                <span class="symbol"><img src="./resources/images/logo.svg" alt=""/></span><span
                    class="title">bidbid</span>
            </a>
            <a href="/login" class="logo" style="float: right;">
                <span class="title">님</span>
            </a>
            <!-- Nav -->
            <nav>
                <ul>
                    <li><a href="#menu">Menu</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Menu -->
    <nav id="menu">
        <h2>Menu</h2>
        <ul>
            <li><a href="/">메인화면갈래요</a></li>
            <li><a href="/category">구경할래요</a></li>
            <li><a href="/item-info">살래요</a></li>
            <li><a href="/item-info">팔래요</a></li>
        </ul>
    </nav>

    <!-- Main -->
    <div id="main" style="padding: 0em 0 3em 0;">
        <div class="inner">
            <span class="image main" style="margin: 0 0 0em 0"><img style="height:400px"
                                                                    src="./resources/images/banner.png" alt=""/></span>

            <section class="tiles" style="margin-top: 0;">
                <article class="style5">
                                <span class="image">
                                    <img src="./resources/images/home/buy.jpg" alt=""/>
                                </span>
                    <a href="/info">
                        <h2>살래요</h2>
                        <div class="content">
                            <p>원하시는 물건을 원하는 가격에 구매해보세요!</p>
                        </div>
                    </a>
                </article>
                <article class="style6">
                                <span class="image">
                                    <img src="./resources/images/home/sell.jpg" alt=""/>
                                </span>
                    <a href="/info">
                        <h2>팔래요</h2>
                        <div class="content">
                            <p>안 쓰는 물건을 원하는 가격에 판매해보세요!</p>
                        </div>
                    </a>
                </article>
                <article class="style4">
                                <span class="image">
                                    <img src="./resources/images/home/register.jpg" alt=""/>
                                </span>
                    <a href="/category">
                        <h2>구경할래요</h2>
                        <div class="content">
                            <p>전국에 있는 내 취향의 상품을 구경해보세요!</p>
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