<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>bidbid</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" type="image⁄x-icon" href="./resources/images/bidLogo.ico">

</head>
<body>
<%--    테스트용--%>
<form action="api/auth/login" method="post">
    <input type="text" name="email"/>
    <input type="password" name="password"/>
    <input type="submit"/>
</form>

    <div id="wrapper">
        <!--page_header영역-->
        <jsp:include page="header.jsp" />

        <!--page_center영역-->
            <div id="page_center">
                 <center>
                    <h1 style="margin:1em">BIDBID</h1>
                 </center>
                <!--  아래 부분은 로그인 폼  -->
                <form action="" method="post" style="margin-bottom: 20px;">
                    <div class="login_area">
                        <div class="id_area">
                        <span>
                            <input type="text" name = "userId" id="userId" class="input-text" placeholder="EMAIL" maxlength="20"/>
                        </span>
                        </div>
                        <div class="pw_area"><input type="password" name = "pwd" id="pwd" class="input-text" placeholder="PW" maxlength="20"/>
                        </div>
                        <div class="click_login">
                            <input type = "submit" value = "login" style="line-height: 0em; height: 40px; font-size: 16px; "/>
                        </div>
                    </div>
                </form>

                 <p align="center" style="margin-bottom: 2em">
                    <a href="#" onClick="sid()" style="color: #000;">ID 찾기</a> / <a href="#" onClick="spass()" style="color: #000;">비밀번호 찾기</a> / <a id= "join" href="/sign" style="color: #000;">회원가입</a>
                 </p>
            </div>
        <!--page_footer영역-->
        <jsp:include page="footer.jsp" />
</body>
<script>
   function sid(){
      window.open("id_select.jsp","","height = 450, width = 460, resizable=no, location=no, resizable=no");
   }

   function spass(){
      window.open("pass_select.jsp","","height = 450, width = 460, resizable=no, location=no, resizable=no");
   }
   //아이디, 비번 미 입력시 오류
   function vaildjoin(){
      var userId = document.getElementById('userId').value.trim();
      var password = document.getElementById('pwd').value.trim();

      if(userId != 0 && password != 0) {
         location.href = 'loginCheck.jsp';
      }

      else if (userId == 0) {
         alert("아이디를 입력해주세요.");
         return false;
      }

      else if (password == 0) {
         alert("비밀번호를 입력해주세요.");
         return false;
      }
   }
</script>
<style>
#page_center {
   margin-top: 3em;
   margin-bottom: 5em;
   font-size: 18px;
}

.login_area {
	height: 150px;
	width: 500px;
	margin-left: auto;
	margin-right: auto;
	font-size: 16px;
	text-align: center;
	color: #FFFFFF;
}
#userIdfield {
	font-size: 36px;
}
#pwdfield {
	font-size: 20px;
}
.id_area {
	width: 300px;
	height: 35px;
	margin-right: auto;
	margin-left: auto;
	margin-top: 10px;
	margin-bottom: 10px;
    background-color: transparent;
    color: #585858 !important;
    cursor: pointer;
    display: inline-block;
}
.pw_area {
	height: 35px;
	width: 300px;
	margin-right: auto;
	margin-left: auto;
	background-color: transparent;
    color: #585858 !important;
    cursor: pointer;
    display: inline-block;
}
#pwd {
	font-size: 18px;
	width: 280px;
	margin-left: 10px;
	height: 33px;
}

#userId {
	font-size: 18px;
	margin-left: 10px;
	width: 280px;
	height: 33px;
}

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
</style>
</html>