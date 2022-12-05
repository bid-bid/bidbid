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
<div>
    <!-- Wrapper -->
    <div id="wrapper">
        <jsp:include page="../fragment/header.jsp"/>

        <div id="form">
            <div class="inner">
                <form method="post" action="#">
                    <section>
                        <h2>구매권 입찰 등록</h2>
                        <div>
                            <div class="row uniform">
                                <div class="6u 12u$(xsmall)">
                                    <input type="text" name="auction-title" id="auction-title" value=""
                                           placeholder="경매 제목"/>
                                </div>
                                <div class="6u 12u$(xsmall)">
                                    <input type="text" name="product-name" id="product-name" value=""
                                           placeholder="판매 상품"/>
                                </div>
                                <div class="12u$">
                                    <textarea name="description" id="description" placeholder="상세 설명"></textarea>
                                </div>
                                <div>
                                    <div class="select-wrapper">
                                        <select name="demo-category" aria-invalid="demo-category">
                                            <option value=""> 카테고리</option>
                                            <option value="fashion">패션</option>
                                            <option value="fashion accessories">패션잡화</option>
                                            <option value="food - health">식품 - 건강</option>
                                            <option value="living - kitchen">생활 - 주방</option>
                                            <option value="furniture - home - decor">가구 - 홈 - 데코</option>
                                            <option value="consumer electronics - computer">가전 - 컴퓨터</option>
                                            <option value="sports">스포츠</option>
                                            <option value="pet hobby">반려동물 - 취미</option>
                                            <option value="ticket - transfer">티켓 - 양도권</option>
                                            <option value="book">도서</option>
                                            <option value="beauty">뷰티</option>
                                            <option value="e coupon">E 쿠폰</option>
                                        </select>
                                    </div>
                                </div>
                                <div id="desired-amount">
                                    <input type="text" name="amount" id="amount" value=""
                                           onkeydown="filterNumber(this, event)" placeholder=" 시작가 (원)"/>
                                </div>
                                <div class="12u 12u$(xsmall)">
                                    <label id="upload-picture" class="button icon fa-upload" for="product-picture">
                                        사진 업로드
                                    </label>
                                    <input type="file" id="product-picture" style="display:none" onchange="onFileUpload(this)" accept="image/*">
                                    <div id="file-name"></div>
                                </div>
                                <div class="12u$">
                                    <ul class="actions">
                                        <li><input type="submit" value="등록" class="special"/></li>
                                        <li><input type="reset" value="초기화" onclick="resetForm()"/></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </section>
                </form>
            </div>
        </div>

        <!-- Footer -->
        <jsp:include page="../fragment/footer.jsp"/>
    </div>
</div>
</body>
<script>

    function onFileUpload(file) {
        console.log(file.files[0].name)
        if(file){
            if(document.getElementById("uploaded-file") != null){
                document.getElementById("uploaded-file").remove();
            }
            let div = document.createElement('div');
            div.id = "uploaded-file"
            let text = document.createTextNode("파일명 : " + file.files[0].name);
            div.appendChild(text);
            document.getElementById("file-name").appendChild(div);
        }
    }

    function resetForm() {
        $('form').each(function () {
            this.reset();
        })
        if(document.getElementById("uploaded-file") != null){
            document.getElementById("uploaded-file").remove();
        }
    }

    function filterNumber(element, event) {
        element.value = element.value.replace(/[^0-9]/g, "");
        let code = event.keyCode;
        if ((code > 47 && code < 58) || event.ctrlKey || event.altKey || code == 8 || code == 9 || code == 46) {
            return;
        }
        event.preventDefault();
        return false;
    }

</script>
</html>