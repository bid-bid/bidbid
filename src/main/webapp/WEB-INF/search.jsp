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
        <header style="text-align: left; padding-left:100px;     ">


                    <h1>search</h1>
            <p></p>
        </header>
        <body style="text-align: center;">
        <section class="tiles">



                    <div style="padding-left:100px;">
                    <input type="search"  id="searchKeyword" name="searchKeyword" placeholder="찾고 싶은 상품을 입력해주세요"style="width:500px;"/>
                        <input type="button"  id="search" name="search" value= "검색"/>
                    </div>


        </section>


        <hr style="border: 10px;">

        <ul class="list-group">

            <c:forEach var="goods" begin="1" end="10" varStatus="status">
                    <div>
                        <input type="text" style="text-align:center;" value="실행확인 ,상품명: 신발, 가격 : 10000원 경매기간 11-29~11-30 경매진행중" onClick="location.href='/search'"
                               style="line-height: 0em; font-size: 16px;"/>

                    </div>

            </c:forEach>

<%--            <c:forEach var="goods" items="${goods}" varStatus="status">--%>
<%--                <div>--%>
<%--                    실행확인--%>
<%--                     <input type="text" value="테스트[${status.count}] ${goods.name}, ${goods.price}, ${goods.applicant}" onClick="location.href='/search/${goods.aid}'--%>
<%--                </div>--%>
<%--            <hr>--%>
<%--            </c:forEach>--%>
        </ul>

        </body>

    </div>

</div>

<!-- Footer -->
<jsp:include page="fragment/footer.jsp"/>
</div>
</body>
</html>
