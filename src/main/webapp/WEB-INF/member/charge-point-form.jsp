<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="../resources/css/main.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <!-- Wrapper -->
    <div id="wrapper">
        <!-- Header -->
        <header id="header" style="padding: 3em 0 0em 0;">
            <div class="inner">
                <!-- Logo -->
                <a href="/home-login" class="logo">
                    <span class="symbol"><img src="./resources/images/logo.svg" alt="" /></span><span class="title">bidbid</span>
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
            <div id="wrapper">
                <div class="inner" align="center" style="margin-top: 2em;">
                    <h1>포인트 충전</h1>
                    <form action="/api/members/charge-point" method="post" style="margin:-1em 0 1em 0">
                        <div>
                            <div class="form_radio_btn radio_male">
                                <input id="radio-1" type="radio" name="check" value=5000>
                                <label for="radio-1">5,000P</label>
                            </div>

                            <div class="form_radio_btn">
                                <input id="radio-2" type="radio" name="check" value=10000>
                                <label for="radio-2">10,000P</label>
                            </div>

                            <div class="form_radio_btn">
                                <input id="radio-3" type="radio" name="check" value=15000>
                                <label for="radio-3">15,000P</label>
                            </div>

                            <div class="form_radio_btn">
                                <input id="radio-4" type="radio" name="check" value=20000>
                                <label for="radio-4">20,000P</label>
                            </div>

                            <div class="form_radio_btn">
                                <input id="radio-5" type="radio" name="check" value=50000>
                                <label for="radio-5">50,000P</label>
                            </div>

                            <div class="form_radio_btn">
                                <input id="radio-6" type="radio" name="check" value=100000>
                                <label for="radio-6">100,000P</label>
                            </div>

                            <div class="button-area">
                                <input type = "submit" onclick="button_click();" value = "충천"></input>
                            </div>
                        </div>
                    </form>
                </div>
         	</div>
        </div>

    <!--page_footer영역-->
    <jsp:include page="../fragment/footer.jsp" />

</body>
</html>
<script>
 function button_click() {
     alert("충전되었습니다");
 };
 </script>

<style type="text/css">
.form_radio_btn {
			width: 33%;
    		border: 1px solid #EAE7E7;
    		border-radius: 10px;
    		display: inline-block;
            margin: 0.5em
		}
		.form_radio_btn input[type=radio] {
			display: none;
		}
		.form_radio_btn label {
		    width: 100%;
			display: block;
    		border-radius: 10px;
   			margin: 0 auto;
    		text-align: center;
    		height: -webkit-fill-available;
    		line-height: 45px;
		}

		/* Checked */
		.form_radio_btn input[type=radio]:checked + label {
			background: #184DA0;
			color: #fff;
		}

		/* Hover */
		.form_radio_btn label:hover {
			color: #666;
		}

		/* Disabled */
		.form_radio_btn input[type=radio] + label {
			background: #F9FAFC;
			color: #666;
		}


.button-area input {
    line-height: 0em;
    height: 40px;
    font-size: 16px;
   	height: 40px;
   	width: 220px;
   	margin-top: 2em;
   	margin-right: auto;
   	margin-left: auto;
}
</style>
