<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>bidbid</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="shortcut icon" type="image⁄x-icon" href="./resources/images/bidLogo.ico">
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
            <a href="/home-login" class="logo">
                <span class="symbol"><img src="./resources/images/logo.svg" alt=""/></span><span
                    class="title">bidbid</span>
            </a>
            <a href="/user" class="logo" style="float: right;">
                <span class="title" style="letter-spacing:0">비드비드님</span>
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

    <div id="main" style="padding: 0em 0 3em 0;">
        <center>
            <h1 id="mypage">MY PAGE</h1>
        </center>
        <div class="inner">
            <section class="tiles" style="margin-top: 0; margin-left:auto; margin-right:auto">
                <div style="width: calc(15%);"></div>
                <img id="user_area" src="./resources/images/user.png" alt=""/>
                <div style="width: calc(40%); padding:1em;">
                    <table style="margin-top:4em;">
                        <tr id="ta_tr">
                            <td id="ta_td">
                                이름 : 비드비드
                            </td>
                        </tr>
                        <tr id="ta_tr">
                            <td id="ta_td">
                                포인트 : 10000000P
                            </td>
                        </tr>
                        <tr id="ta_tr">
                            <td>
                                <a id="charge" href="#" onClick="point()"> > 포인트 충전 </a>
                            </td>
                        </tr>
                    </table>
                </div>
                <div style="width: calc(10%);"></div>
            </section>
        </div>

        <h2 align="center" style="margin-top:50px">[구매 내역]</h2>
        <div class="inner">
            <table>
                <tr id="ta_tr" align="center" style="background-color: #f6f6f6;">
                    <td id="ta_td" style="width:50%;">
                        상품명(게시글 제목)
                    </td>
                    <td id="ta_td" style="width:25%">
                        판매자
                    </td>
                    <td id="ta_td" style="width:25%">
                        사용 포인트
                    </td>
                </tr>
                <tr id="ta_tr" align="center">
                    <td id="ta_td">
                        ABC가방
                    </td>
                    <td id="ta_td">
                        DEF님
                    </td>
                    <td id="ta_td">
                        15000
                    </td>
                </tr>
            </table>
        </div>

        <h2 align="center" style="margin-top:50px">[판매 내역]</h2>
        <div class="inner">
            <table>
                <tr id="ta_tr" align="center" style="background-color: #f6f6f6;">
                    <td id="ta_td" style="width:50%">
                        상품명(게시글 제목)
                    </td>
                    <td id="ta_td" style="width:25%">
                        판매자
                    </td>
                    <td id="ta_td" style="width:25%">
                        사용 포인트
                    </td>
                </tr>
                <tr id="ta_tr" align="center">
                    <td id="ta_td">
                        ABC가방
                    </td>
                    <td id="ta_td">
                        DEF님
                    </td>
                    <td id="ta_td">
                        15000
                    </td>
                </tr>
            </table>
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
<script>
    function point() {
        window.open("/point", "", "height = 450, width = 500, resizable=no, location=no, resizable=no");
    }
</script>
<style type="">
    #mypage {
        margin: 1em 0 0 0;
        letter-spacing: 0.35em;
    }

    #user_area {
        width: calc(30%);
        padding: 3em;
    }

    #ta_tr {
        background-color: #FFF;
        border: 0;
        color: #000;
    }

    #ta_td {
        border-bottom: solid 1px #c9c9c9;
        color: #000;
    }

    #charge {
        font-weight: 600;
        border-bottom: 0
    }

</style>
</html>