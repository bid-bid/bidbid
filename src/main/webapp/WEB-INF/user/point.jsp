<%@ page language="java" contentType="text/html; charset=UTF-8"
 	pageEncoding="UTF-8"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Insert title here</title>
 <link rel="stylesheet" href="./resources/css/main.css" rel="stylesheet" type="text/css" />
 </head>
 <body>
 	<div id="wrapper">
        <div class="inner" align="center" style="margin-top: 2em;">
            <h1>포인트 충전</h1>
            <form action="/" method="post" style="margin:-1em 0 1em 0">
                <div class="form_toggle row-vh d-flex flex-row justify-content-between" >
                    <div class="form_radio_btn radio_male">
                        <input id="radio-1" type="radio" name="userSex" value="male">
                        <label for="radio-1">5,000P</label>
                    </div>

                    <div class="form_radio_btn">
                        <input id="radio-2" type="radio" name="userSex" value="female">
                        <label for="radio-2">10,000P</label>
                    </div>

                    <div class="form_radio_btn">
                        <input id="radio-3" type="radio" name="userSex" value="female">
                        <label for="radio-3">10,000P</label>
                    </div>

                    <div class="form_radio_btn">
                        <input id="radio-4" type="radio" name="userSex" value="female">
                        <label for="radio-4">20,000P</label>
                    </div>

                    <div class="form_radio_btn">
                        <input id="radio-5" type="radio" name="userSex" value="female">
                        <label for="radio-5">50,000P</label>
                    </div>

                    <div class="form_radio_btn">
                        <input id="radio-6" type="radio" name="userSex" value="female">
                        <label for="radio-6">100,000P</label>
                    </div>

                    <div class="button-area">
                        <input type = "submit" onclick="button_click();" value = "충천"></input>
                    </div>
                </div>
            </form>
        </div>
 	</div>
 </body>
 </html>

 <script>
 function button_click() {
     alert("충전되었습니다");
     //from + submit에서 window.close 안먹힘, 따라서 빈 페이지열고 닫는 방식으로 구성
     window.open("about:blank", "_self").close();
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