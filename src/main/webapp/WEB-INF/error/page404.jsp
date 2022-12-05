<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>bidbid</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="shortcut icon" type="image⁄x-icon" href="./resources/images/bid.ico">
</head>

<body>
<div>
    <!-- Wrapper -->
    <div id="wrapper">
        <jsp:include page="header.jsp"/>

        <div id="main">
            <div class="inner">
                <center>
                    <h1 style="margin: 0 0 0 0; font-size: 4em;">
                        <img style="width: 5%; margin: 0 10px 0 0;" src="./resources/images/Error/404.png" alt="" />404
                    </h1>
                    <h2 style="color:red">PAGE NOT FOUND</h2>

                    <p>요청하신 페이지를 찾을 수 없습니다.<br>
                    페이지 주소가 정확하지 않거나 요청하신 페이지의 주소가 변경, 삭제되어 찾을 수 없습니다.</p>

                    <input type="button" onClick="location.href='/'" style="padding:1em; letter-spacing: 0em; line-height: 0em;" value="홈으로 돌아가기">
                </center>
            </div>
        </div>
    </div>
</div>
       <!--page_footer영역-->
       <jsp:include page="footer.jsp"/>
</body>
</html>
