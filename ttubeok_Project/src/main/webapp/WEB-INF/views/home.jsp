<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Dongle&family=Jua&family=Maven+Pro:wght@500&family=Nanum+Pen+Script&family=Nunito&display=swap" rel="stylesheet">
<style>
    .container{width: 1200px; height: 880px; 
        background: url(images/bg1.png); margin: 10px auto;
        position: relative;}
    .title{position: absolute; top: 80px; left: 250px; display: flex;}
    .tfont{font-size: 8em; font-family: 'Nanum Pen Script', cursive; padding-left: 25px;}
    .menuboard{width: 1060px; position: absolute; bottom: 30px; display: flex; justify-content: space-between; margin-left: 70px;} 
    .menuboard a{text-decoration: none; color: #000;}
    .menu{width: 320px; height: 250px; background: rgba(255, 255, 255, 0.95); text-align: center;}
    .menu img{padding-top: 20px; width:60px; height: 60px;}
    .menu p:nth-of-type(1){font-size: 2.5em; font-family: 'Jua', sans-serif; margin: 10px 0;}
   
    .fcontainer{width: 1200px; margin: 0 auto; position: relative;}
    .fcontainer span{position: absolute; left: 20px; bottom: 15px; color: #fff;}
</style>
</head>
<body>
    
    <div>
        <div class="container">
            <div class="title">
                <img src="images/footlogo.png" width="150px" height="150px">
                <span class="tfont">뚜벅 데이트</span>
            </div>

            <div class="menuboard">
                <a href="#">
                    <div class="menu">
                        <img src="images/route.png">
                        <p>뚜벅 코스</p>
                        <p>데이트 코스 검색, 조회</p>
                    </div>
                </a>
                <a href="#">
                    <div class="menu">
                        <img src="images/user.png">
                        <p>마이 페이지</p>
                        <p>좋아요 누른 코스</p>
                        <p>내가 작성한 데이트 코스</p>
                    </div>
                </a>
                <a href="#">
                    <div class="menu">
                        <img src="images/commynuty.png">
                        <p>커뮤니티</p>
                        <p>데이트 코스 질문</p>
                        <p>묻고 답하기</p>
                    </div>
                </a>
            </div>
            


        </div>
    </div>

    <footer>
        <div class="fcontainer">
            <span>Copyright ⓒ By Ali 2022 </span>
        </div>
    </footer>

</body>
</html>