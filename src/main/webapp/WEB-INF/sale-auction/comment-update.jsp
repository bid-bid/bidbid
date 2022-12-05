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
        <div id="main" style="padding: 0em 0 2em 0;">
            <div class="inner">
                <center>
                    <h2 class="mypage" style="margin-bottom: 2em;">희망가 수정</h2>
                </center>
                <div class="comment-area">
                    <form method="post" action="">
                        <table style="text-align: center; border: solid 1px #c9c9c9;">
                            <tr style="background-color: #FFF;">
                                <td class="comment-inner" style="width:20%; border-bottom: solid 1px #c9c9c9; color: #000;">
                                    [유저이름]
                                </td>
                                <td style="width:30%; color: #000; text-align:left">
                                    <label id="upload-picture" class="button icon fa-upload" for="product-picture" style="letter-spacing:0; overflow: visible; margin:0">
                                        사진
                                    </label>
                                    <input type="file" id="product-picture" style="display:none" onchange="onFileUpload(this)" accept="image/*">
                                    <div id="file-name" style="display: inline-block; margin-left: 0.5em;"></div>
                                </td>
                                <td style="width:50%; color: #000;">
                                    <input type="text" name="desired-bid" id="desired-bid" value="" placeholder="희망 입찰가" onfocusout="validateBid()"/>
                                    <div id="bid_alert" class="bid-alert">필수 정보입니다.</div>
                                </td>
                                <td style="width:20%; border-bottom: solid 1px #c9c9c9; color: #000;">
                                    <input type="submit" class="btn-primary pull" value="수정">
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
       <!--page_footer영역-->
       <jsp:include page="../fragment/footer.jsp"/>
</body>
<style type="">
.comment-area{
    width: calc(70%);
    margin-left:auto;
    margin-right:auto;
}

.comment-inner {
    margin-top:auto;
    margin-bottom:auto;
}

.bid-alert {
    text-align:left;
    color: #ef0003;
    font-size: 16px;
    margin: 5px 0;
    display: none;
}
</style>

<script>
     function validateBid() {
          var bid = document.getElementById('desired-bid').value.trim();
          var alertEl = document.getElementById('bid_alert');

          // 입력 여부 검증
          if (bid.length == 0) {
             alertEl.innerHTML = '필수 정보입니다.';
             alertEl.style.display = 'block';

             return false;
          }
          // 숫자만 가능
          if (!/^[0-9]*$/.test(bid)) {
               alertEl.innerHTML = '숫자만 입력해주세요';
               alertEl.style.display = 'block';

               return false;
            }

          alertEl.style.display = 'none';
     }

     function onFileUpload(file) {
          console.log(file.files[0].name)
          if(file){
              if(document.getElementById("uploaded-file") != null){
                  document.getElementById("uploaded-file").remove();
              }
              let div = document.createElement('div');
              div.id = "uploaded-file"
              let text = document.createTextNode(file.files[0].name);
              div.appendChild(text);
              document.getElementById("file-name").appendChild(div);
          }
      }
</script>
</html>
