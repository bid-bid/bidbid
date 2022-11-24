<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>회원가입</title>
    <link rel="shortcut icon" type="image⁄x-icon" href="./resources/images/bidLogo.ico">

</head>
<body>
<div class="wrapper">
    <!--page_header영역-->
    <jsp:include page="header.jsp"/>

    <div class="container" style="margin-top:50px">
        <center>
            <h1 style="margin:1em">BIDBID Membership</h1>
        </center>

        <div class="form-area">
            <form action="/api/member" method="post">
                <table>
                    <tr style="background-color: #FFF;border: 0;">
                        <td>
                       <span>
                          <input type="text" id="name" name="userName" class="input-text" placeholder="NAME"
                                 maxlength="15" onfocusout="validateName()">
                       </span>
                            <div id="name_alert" class="alert">필수 정보입니다.</div>
                        </td>
                    </tr>
                    <tr style="background-color: #FFF;border: 0;">
                        <td>
                      <span>
                         <input type="text" name="email" id="userId" class="input-text" placeholder="EMAIL"
                                maxlength="20" onfocusout="validateId()">
                      </span>
                            <div id="id_alert" class="alert">필수 정보입니다.</div>
                        </td>
                    </tr>
                    <tr style="background-color: #FFF;border: 0;">
                        <td>
                      <span>
                         <input type="password" name="password" id="pwd" class="input-text" placeholder="PW" maxlength="20"
                                onfocusout="validatePassword()">
                      </span>
                            <div id="password_alert" class="alert">필수 정보입니다.</div>
                        </td>
                    </tr>
                    <tr style="background-color: #FFF;border: 0;">
                        <td>
                      <span>
                         <input type="password" id="pwdChk" class="input-text" placeholder="PW CHECK" maxlength="20"
                                onfocusout="validatePassword()">
                      </span>
                            <div id="check_password_alert" class="alert">필수 정보입니다.</div>
                        </td>
                    </tr>
                    <tr style="background-color: #FFF;border: 0;">
                        <td>
                            <div class="button-area">
                                <input type="submit" value="join"></input>
                            </div>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <!--page_footer영역-->
    <jsp:include page="footer.jsp"/>
</body>

<script type="text/javascript">

    function validateId() {
        var userId = document.getElementById('userId').value.trim();
        var alertEl = document.getElementById('id_alert');

        // 입력 여부 검증
        if (userId.length == 0) {
            alertEl.innerHTML = '필수 정보입니다.';
            alertEl.style.display = 'block';

            return false;
        }

        // 길이 검증
        if (userId.length < 5) {
            alertEl.innerHTML = '아이디는 5글자 이상 입력해주세요.';
            alertEl.style.display = 'block';

            return false;
        }

        // 대소문자, 숫자 입력 검증
        if (!/^[a-zA-Z0-9+-\_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/.test(userId)) {
            alertEl.innerHTML = '이메일 형식이 아닙니다.';
            alertEl.style.display = 'block';

            return false;
        }

        alertEl.style.display = 'none';
    }

    function validatePassword() {
        var password = document.getElementById('pwd').value.trim();
        var cPassword = document.getElementById('pwdChk').value.trim();
        var alertEl = document.getElementById('password_alert');
        var cAlertEl = document.getElementById('check_password_alert');

        // 비밀번호 입력 여부 검증
        if (password.length == 0) {
            alertEl.innerHTML = '필수 정보입니다.';
            alertEl.style.display = 'block';

            return false;
        }

        // 비밀번호 길이 검증
        if (password.length < 5) {
            alertEl.innerHTML = '비밀번호는 5글자 이상 입력해주세요.';
            alertEl.style.display = 'block';

            return false;
        }

        // 비밀번호 대소문자, 숫자 입력 검증
        if (!/^[A-Za-z0-9]*$/.test(password)) {
            alertEl.innerHTML = '비밀번호는 영문 대문자,소문자, 숫자만 입력 가능합니다.';
            alertEl.style.display = 'block';

            return false;
        }

        // 비밀번호 확인 입력 여부 검증
        if (cPassword.length == 0) {
            cAlertEl.innerHTML = '필수 정보입니다.';
            cAlertEl.style.display = 'block';

            return false;
        }

        // 비밀번호 확인 길이 검증
        if (cPassword.length < 5) {
            cAlertEl.innerHTML = '비밀번호는 5글자 이상 입력해주세요.';
            cAlertEl.style.display = 'block';

            return false;
        }

        // 비밀번호 확인 대소문자, 숫자 입력 검증
        if (!/^[A-Za-z0-9]*$/.test(cPassword)) {
            cAlertEl.innerHTML = '비밀번호는 영문 대문자,소문자, 숫자만 입력 가능합니다.';
            cAlertEl.style.display = 'block';

            return false;
        }

        // 비밀번호, 비밀번호 확인 검증
        if (password != cPassword) {
            cAlertEl.innerHTML = '비밀번호가 일치하지 않습니다.';
            cAlertEl.style.display = 'block';

            return false;
        }

        alertEl.style.display = 'none';
        cAlertEl.style.display = 'none';
    }

    function validateName() {
        var name = document.getElementById('userName').value.trim();
        var alertEl = document.getElementById('name_alert');

        // 입력 여부 검증
        if (name.length == 0) {
            alertEl.innerHTML = '필수 정보입니다.';
            alertEl.style.display = 'block';

            return false;
        }

        alertEl.style.display = 'none';
    }

    function validateBirth() {
        var birthYear = document.getElementById('userbirth1').value.trim();
        var birthDay = document.getElementById('userbirth3').value.trim();
        var alertEl = document.getElementById('birth_alert');

        if (birthYear.length == 0) {
            alertEl.innerHTML = '태어난 년도 4자리를 입력해주세요.';
            alertEl.style.display = 'block';

            return false;
        }

        if (birthDay.length == 0) {
            alertEl.innerHTML = '태어난 일자를 입력해주세요.';
            alertEl.style.display = 'block';

            return false;
        }

        if (!/^[0-9]*$/.test(birthYear)) {
            birth_alert.innerHTML = '태어난 년도는 숫자만 입력 가능합니다.';
            birth_alert.style.display = 'block';

            return false;
        }

        if (!/^[0-9]*$/.test(birthDay)) {
            birth_alert.innerHTML = '태어난 일자는 숫자만 입력 가능합니다.';
            birth_alert.style.display = 'block';

            return false;
        }

        alertEl.style.display = 'none';
    }

    //배송지
    function valiplace() {
        var pl = document.getElementById('address').value.trim();
        var alertEl = document.getElementById('pl_alert');

        // 입력 여부 검증
        if (pl.length == 0) {
            alertEl.innerHTML = '필수 정보입니다.';
            alertEl.style.display = 'block';

            return false;
        }

        alertEl.style.display = 'none';
    }

    //전화번호
    function valiphone() {
        var ph = document.getElementById('phone').value.trim();
        var alertEl = document.getElementById('ph_alert');

        // 입력 여부 검증
        if (ph.length == 0) {
            alertEl.innerHTML = '필수 정보입니다.';
            alertEl.style.display = 'block';

            return false;
        }
        //전화번호 길이 오류
        if (ph.length < 11) {
            alertEl.innerHTML = '전화번호를 다시 확인해주세요.';
            alertEl.style.display = 'block';

            return false;
        }

        // 숫자 입력 검증
        if (!/^[0-9]*$/.test(ph)) {
            alertEl.innerHTML = '숫자만 입력 가능합니다.';
            alertEl.style.display = 'block';

            return false;
        }

        alertEl.style.display = 'none';
    }

    /*function validJoin() {
       var password = document.getElementById('pwd').value.trim();
       var cPassword = document.getElementById('pwdChk').value.trim();
       var userId = document.getElementById('userId').value.trim();
       var pl = document.getElementById('address').value.trim();
       var ph = document.getElementById('phone').value.trim();
       var birthYear = document.getElementById('userbirth1').value.trim();
       var birthDay = document.getElementById('userbirth3').value.trim();

       if(password != 0 && cPassword != 0 && userId != 0 && pl != 0 && ph != 0 && birthYear != 0 && birthDay != 0){

       }
       else{
          alert("빈 칸을 모두 채워주세요.");
       }
    }
    */
</script>
</html>

<style>
    .button-area input {
        line-height: 0em;
        height: 40px;
        font-size: 16px;
        height: 40px;
        width: 220px;
        margin-right: auto;
        margin-left: auto;
    }

    div.container {
        width: 500px;
        margin-bottom: 3em;
        margin-right: auto;
        margin-left: auto;
    }

    .form-area table {
        background-color: #FFF;
        border-collapse: collapse;
        width: 100%;
        margin-bottom: 10px;
    }

    .form-area table:last-child {
        margin-bottom: 0;
    }

    .form-area table tr td {
        padding: 5px 10px;
    }

    .input-text {
        height: 30px;
        width: 100%;
        font-size: 18px;
        padding-top: 2px;
        padding-right: 0px;
        padding-bottom: 2px;
        padding-left: 0px;
    }

    .input-text.birth {
        width: 150px;
        margin-right: auto;
        margin-left: auto;
        clear: both;
    }

    .form-area table tr td select {
        width: 160px;
        border: none;
        height: 30px;
        font-size: 16px;
        padding-top: 2px;
        padding-right: 0px;
        padding-bottom: 2px;
        padding-left: 0px;
    }

    .form-area table tr td .alert {
        color: #ef0003;
        font-size: 12px;
        margin: 5px 0;
        display: none;
    }

    .button-area {
        text-align: center;
        padding: 10px 0;
    }
</style>