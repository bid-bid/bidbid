<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>bidbid</title>
    <meta charset="utf-8" />
    <meta name="viewport" conte nt="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" type="image⁄x-icon" href="./resources/images/bid.ico">
    <link rel="stylesheet" href="./resources/css/main.css" rel="stylesheet" type="text/css" />
    <script src="./resources/js/jquery.min.js"></script>
    <script src="./resources/js/skel.min.js"></script>
    <script src="./resources/js/util.js"></script>
    <script src="./resources/js/main.js"></script>
</head>

<style>
    .box{
        background-color: yellow;
        color:green;
        width:400px;

    }

</style>
<body>
<!-- Wrapper -->
<div id="wrapper">
    <!-- Header -->
    <header id="header">
        <div class="inner">
            <!-- Logo -->
            <a href="/" class="logo">
                <span class="symbol"><img src="./resources/images/logo.svg" alt="" /></span><span class="title">bidbid</span>
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
    <div id="main">
        <header style="text-align: left; padding-left:100px; ">

        </header>
        <body style="text-align: center;">

            <div border="">

                <h2>상품 이름: ${goods.name}</h2>
                <hr>
        <%--        src="${goods.img}"--%>

                <img class="goodsImage" src="./resources/images/category/makeup.jpg" >
                상품 설명:${goods.description}

            </div>




        </body>

    </div>

</div>

<!-- Footer -->
<footer id="footer">
    <div class="inner">
        <section>
            <h2>Get in touch</h2>
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
            <li>&copy; Untitled. All rights reserved</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
        </ul>
    </div>
</footer>
</div>
</body>
</html>
