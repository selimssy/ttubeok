<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="./css/common.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Dongle&family=Jua&family=Maven+Pro:wght@500&family=Nanum+Pen+Script&family=Nunito&display=swap" rel="stylesheet">
</head>
<jsp:include page="user/login_modal.jsp" />
<body>
    
    
    
    <div>
        <div class="container">
        	<nav class="main_nav">
                <ul>
                    <a href="#" id="login"><li>로그인</li></a>
                    <a href="#"><li>회원가입</li></a>
                </ul>
            </nav>
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