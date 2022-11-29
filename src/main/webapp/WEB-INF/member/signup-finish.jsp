<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="my.dao.*,my.util.*,my.model.*,java.sql.*,java.util.*" %>
<%@ page import="java.net.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>BIDBID</title>
    <link rel="shortcut icon" type="image⁄x-icon" href="./resources/images/bidLogo.ico">
</head>
<body>
<fmt:requestEncoding value="utf-8"/>

<%
    request.setCharacterEncoding("utf-8");
    String userEmail = request.getParameter("userEmail");
    String pwd = request.getParameter("pwd");
    String userName = request.getParameter("userName");
%>
<div class="wrapper">
    <!--page_header영역-->
    <jsp:include page="../fragment/header.jsp"/>

    <center style="margin-bottom:4em;">
        <h1 style="margin:1em">Welcome to BIDBID</h1>
        <img src="./resources/images/join2.png" style="height:150px; margin-bottom:1em;" alt=""/>
        <!-- 회원가입 완료 -->
        <div class="login_te">
            <p style="color: #000;"> &quot; <%=userEmail %> &quot; 님의<br> BIDBID 회원가입이 완료되었습니다.</font></p>
            <div class="click_login">
                <input type="submit" value="Login" onClick="location.href='/login'"
                       style="line-height: 0em; height: 40px; font-size: 16px;"/>
            </div>
        </div>
    </center>
    <!--page_footer영역-->
    <jsp:include page="../fragment/footer.jsp"/>
</div>
</body>
</html>

<style type="text/css">

    .click_login {
        height: 40px;
        width: 220px;
        margin-top: 20px;
        margin-right: auto;
        margin-left: auto;
        color: #FFF;
        font-size: 36px;
    }

    .click_login input {
        font-weight: 900;
        color: #FFF;
        overflow: visible;
        width: 220px;
        text-align: center;
        margin-left: auto;
        margin-right: auto;
    }

    .login_te p {
        font-size: 16px;
        text-align: center;
    }
</style>