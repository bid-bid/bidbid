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
            <li><a href="/info">살래요</a></li>
            <li><a href="/info">팔래요</a></li>
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
</body>
</html>