<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>bidbid</title>
    <meta charset="utf-8" />
    <meta name="viewport" conte nt="width=device-width, initial-scale=1" />
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
        <header style="text-align: left; padding-left:100px;  ">

            <h1>search</h1>
            <h2>구매상품 입력</h2>
            <p></p>
        </header>

        <body style="text-align: center;">
        <section class="tiles">
            <div style="padding-left:100px;">

                    <table class="board_search" border="0" width="430" height="30" align="center">
                        <tr>
                            <td >
                                <select name="category" class="category1" id="category" width="50px" style="float:left; text-align: center">
                                    <option value="fashion">선택해주세요</option>
                                    <option value="패션">패션</option>
                                    <option value="패션 잡화">패션 잡화</option>
                                    <option value="식품 건강">식품 건강</option>
                                    <option value="생활 주방">생활 주방</option>
                                    <option value="가구 홈 데코">가구 홈 데코</option>
                                    <option value="가전, 컴퓨터">가전, 컴퓨터</option>
                                    <option value="스포츠">스포츠</option>
                                    <option value="반려동물">반려동물</option>
                                    <option value="티켓">티켓</option>
                                    <option value="도서">도서</option>
                                    <option value="뷰티">뷰티</option>
                                    <option value="e-e쿠폰">e쿠폰</option>
                                </select>
                            </td>
                            <td style="vertical-align : middle">
                                <input type="search"  id="searchKeyword" max maxlength="50"   name="searchKeyword" placeholder="찾고 싶은 상품을 입력해주세요"style="width:300px;"/>
                            </td>
                            <td style="vertical-align : middle">
                               <input type="submit"  id="search" name="search" onclick="searchFilter()" value= "검색" />
                            </td>
                        </tr>
                    </table>

            </div>
        </section>
        <hr style="border: 10px;">

        <div class="list-group">
            <table>
                <tbody id="pBody">
                <tr style="border: 1px solid #444444;"align="center" >
                    <th>카테고리</th>
                    <th>경매품 이름</th>
                    <th>이미지</th>

                    <th>경매 진행여부</th>
                    <th>경매 마감 날짜</th>
                    <th>작성자</th>
                </tr>

                            <c:forEach var="purchase" items="${purchase}" varStatus="status">
                                    <tr class="trTag">
                                        <th class="thTag"> <a href="/purchase-search/${purchase.id}" >${purchase.name}</a></th>
                                        <th class="thTag"> <img src="./resources/images/home/buy.jpg" alt="" width="100" height="100"/></th>
                                        <th class="thTag">${purchase.proceed}</th>
                                        <th class="thTag">${purchase.endDate}</th>
                                        <th class="thTag">${purchase.writer}</th>
                                    </tr >
                                </c:forEach>

                </tbody>
            </table>
        </div>
        </body>

    </div>

</div>

<!-- Footer -->
<jsp:include page="fragment/footer.jsp"/>
</div>
</body>
</html>
<script language=javascript>

    function searchFilter() {



        var value, table, tr, td, i,category;
        value = document.getElementById("searchKeyword").value.toUpperCase();
        category=document.getElementById("category").value;
        table = document.getElementById("pBody");
        tr = table.getElementsByClassName("trTag");



        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByClassName("thTag");
            if((td[0].innerHTML.toUpperCase().indexOf(category) > -1)&&(td[1].innerHTML.toUpperCase().indexOf(value) > -1)){

            }
            else{

                    tr[i].style.display = "none";

                }
        }
    }

</script>