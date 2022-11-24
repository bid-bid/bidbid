<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>bidbid</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" type="image⁄x-icon" href="./resources/images/bidLogo.ico">
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
                            <span class="symbol"><img src="./resources/images/logo.svg" alt="" /></span><span class="title">bidbid</span>
                        </a>
                        <a href="/login" class="logo" style="float: right;">
                            <span class="title">login</span>
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
        </div>
</body>
</html>