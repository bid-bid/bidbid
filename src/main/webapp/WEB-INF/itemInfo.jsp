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
            <h1>패션</h1>
            <span class="image main"><img style="height:400px" src="./resources/images/pic13.jpg" alt=""/></span>
            <p>Donec eget ex magna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque venenatis
                dolor imperdiet dolor mattis sagittis. Praesent rutrum sem diam, vitae egestas enim auctor sit amet.
                Pellentesque leo mauris, consectetur id ipsum sit amet, fergiat. Pellentesque in mi eu massa lacinia
                malesuada et a elit. Donec urna ex, lacinia in purus ac, pretium pulvinar mauris. Curabitur sapien
                risus, commodo eget turpis at, elementum convallis elit. Pellentesque enim turpis, hendrerit
                tristique.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dapibus rutrum facilisis. Class aptent
                taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam tristique libero eu
                nibh porttitor fermentum. Nullam venenatis erat id vehicula viverra. Nunc ultrices eros ut ultricies
                condimentum. Mauris risus lacus, blandit sit amet venenatis non, bibendum vitae dolor. Nunc lorem
                mauris, fringilla in aliquam at, euismod in lectus. Pellentesque habitant morbi tristique senectus et
                netus et malesuada fames ac turpis egestas. In non lorem sit amet elit placerat maximus. Pellentesque
                aliquam maximus risus, vel venenatis mauris vehicula hendrerit.</p>
            <p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque venenatis dolor imperdiet
                dolor mattis sagittis. Praesent rutrum sem diam, vitae egestas enim auctor sit amet. Pellentesque leo
                mauris, consectetur id ipsum sit amet, fersapien risus, commodo eget turpis at, elementum convallis
                elit. Pellentesque enim turpis, hendrerit tristique lorem ipsum dolor.</p>
        </div>
    </div>
    <!-- Footer -->
    <jsp:include page="fragment/footer.jsp"/>
</div>
</body>
</html>