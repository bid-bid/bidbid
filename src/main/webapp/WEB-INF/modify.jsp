
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>bidbid</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
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
        <div class="inner">
            <h1>상품 수정</h1>
            <form method="post" autocomplete="off" enctype="multipart/form-data">

                <input type="hidden" name="gdsNum" value="${goods.gdsNum}" />

                <div class="inputArea">
                    <label>카테고리</label>
                    <select class="category1">
                        <option value="fashion">패션</option>
                        <option value="fashion accessories">패션 잡화</option>
                        <option value="food">식품 건강</option>
                        <option value="kitchen">생활 주방</option>
                        <option value="furniture">가구 홈 데코</option>
                        <option value="homeAppliances">가전, 컴퓨터</option>
                        <option value="sports">스포츠</option>
                        <option value="pet">반려동물</option>
                        <option value="ticket">티켓</option>
                        <option value="book">도서</option>
                        <option value="beauty">뷰티</option>
                        <option value="e-coupon">e쿠폰</option>
                    </select>
                </div>
                <div class="inputArea" style="margin-top: 20px">
                    <label class="form-label"  >이미지</label>
                    <input type="file" name="file" class="form-control">


                </div>
                <div class="inputArea" style="margin-top: 20px">
                    <label for="gdsName" >상품명</label>
                    <input type="text" id="gdsName" name="gdsName" value="${goods.gdsName}"/>
                </div>
                <div class="inputArea"  style="margin-top: 20px">
                    <label for="gdsPrice">상품가격</label>
                    <input type="text" id="gdsPrice" name="gdsPrice" value="${goods.gdsPrice}"/>
                </div>

                <div class="inputArea"  style="margin-top: 20px">
                    <label for="gdsDes">상품소개</label>
                    <textarea rows="5" cols="50" id="gdsDes" name="gdsDes">${goods.gdsDes}</textarea>
                </div>


                <div class="inputArea">
                    <button type="submit" id="update_Btn" class="btn btn-primary" style="margin-top: 50px">완료</button>
                    <button type="submit" id="back_Btn" class="btn btn-warning" style="margin-top: 50px">취소</button>
                </div>
            </form>

        </div>

    </div>
    <!-- Footer -->
    <jsp:include page="fragment/footer.jsp"/>
</div>


</div>
</body>
</html>