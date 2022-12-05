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
        <jsp:include page="../fragment/header.jsp"/>

        <div id="main">
            <div class="inner">
                <center>
                    <h1 style="margin: 0 0 0 0; font-size: 4em;">
                        <img style="width: 5%; margin: 0 10px 0 0;" src="./resources/images/Error/404.png" alt="" />500
                    </h1>
                    <h2 style="color:red">SERVER ERROR</h2>

                    <p>요청하신 작업을 수행하지 못했습니다.<br>
                    일시적인 현상이니 잠시 후 다시 시도해 주세요.</p>

                    <input type="button" onClick="location.href='/'" style="padding:1em; letter-spacing: 0em; line-height: 0em;" value="홈으로 돌아가기">
                </center>
            </div>
        </div>
    </div>
</div>
       <!--page_footer영역-->
       <jsp:include page="../fragment/footer.jsp"/>
</body>
</html>
