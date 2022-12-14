<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
<!-- link rel="stylesheet" href="./css/common.css"> -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Dongle&family=Jua&family=Maven+Pro:wght@500&family=Nanum+Pen+Script&family=Nunito&display=swap" rel="stylesheet">
</head>
<!--jsp:include page="user/login_modal.jsp" /-->
<style type="text/css">
   .container{width: 1200px; height: 880px;
       background: url(./images/bg1.png); margin: 10px auto;
       position: relative;}
   .main_nav{text-align: right; font-size: 1.5em; padding-right: 35px;}
   .main_nav ul li{list-style: none; display:inline-block; padding: 20px 10px 0px 40px}
   .main_nav ul a{text-decoration: none; color: #000;}
   .main_nav ul a:nth-child(1){background-image:url(./images/login.png); background-size: 25%; background-repeat: no-repeat; background-origin:content-box ;}
   .main_nav ul a:nth-child(2){background-image:url(./images/join2.png); background-size: 25%; background-repeat: no-repeat; background-origin:content-box;}
   .main_nav ul #logout{background-image:url(./images/logout.png); background-size: 25%; background-repeat: no-repeat; background-origin:content-box;}
   .main_nav ul a:hover{font-weight: bold;}    
   .title{position: absolute; top: 80px; left: 250px; display: flex;}
   .tfont{font-size: 8em; font-family: 'Nanum Pen Script', cursive; padding-left: 25px;}
   .menuboard{width: 1060px; position: absolute; bottom: 30px; display: flex; justify-content: space-between; margin-left: 70px;}
   .menuboard a{text-decoration: none; color: #000;}
   .menu{width: 320px; height: 250px; background: rgba(255, 255, 255, 0.95); text-align: center;}
   .menu img{padding-top: 20px; width:60px; height: 60px;}
   .menu p:nth-of-type(1){font-size: 2.5em; font-family: 'Jua', sans-serif; margin: 10px 0;}
  
   .fcontainer{width: 1200px; margin: 0 auto; position: relative;}
   .fcontainer span{position: absolute; left: 20px; bottom: 15px; color: #fff;}




   #login_modal{display: none; width: 400px; height: 500px; position: fixed;
       top: 50%; left: 50%; transform: translate(-50%, -50%); box-shadow: 0 0 20px 0 #e8e8e8;
       background: #fff; border-radius: 10px;
   }
   #join_modal{display: none; width: 450px; height: 585px; position: fixed;
       top: 50%; left: 50%; transform: translate(-50%, -50%); box-shadow: 0 0 20px 0 #e8e8e8;
       background: #fff; border-radius: 10px;
   }    
   .modal_header{border-bottom: 1px solid #dee2e6; display: flex; position: relative;}
   .modal_logo{font-size: 1.25em; font-family: 'Nanum Pen Script', cursive; padding-left: 15px;}
   .modal_close{height: 25px; float: right; position: absolute; top: 25px; right: 15px;}
  
   .modal_table{border-collapse: collapse; width: 100%;}
   .modal_body{padding: 0 20px; display: block;}
   .mlabel{padding-top: 10px;}
   .modal_input{border: 1px solid #d9d9de; box-sizing: border-box; width: 100%; height: 40px;}
   #auto_login{margin-top: 20px; margin-bottom: 20px;}
   .m_button{margin-top: 20px; width: 100%; height: 40px; padding: 0 20px; border: none; border-radius: 5px; cursor:pointer;}

</style>
<body>
   
    <div>
        <div class="container">
        
        	<c:if test="${login == null}" >  <!-- 로그인 안되어있을 경우 -->
	            <nav class="main_nav">
	                <ul>
	                    <a href="#" id="login"><li>로그인</li></a>
	                    <a href="#" id="join"><li>회원가입</li></a>                
	                </ul>    
	           </nav>     
           </c:if>                
           <c:if test="${login != null}">  <!-- 로그인 되어있을 경우 -->
           		<nav class="main_nav">
           			<ul>
           				<a href="/ttubeok/user/logout" id="logout" onclick="return confirm('로그아웃 하시겠습니까?')"><li>로그아웃</li></a>
           			</ul>
           		</nav>
           </c:if>

            
            <div class="title">
                <img src="./images/footlogo.png" width="150px" height="150px">
                <span class="tfont">뚜벅 데이트</span>
            </div>

            <div class="menuboard">
                <a href="#">
                    <div class="menu">
                        <img src="./images/route.png">
                        <p>뚜벅 코스</p>
                        <p>데이트 코스 검색, 조회</p>
                    </div>
                </a>
                <a href="#">
                    <div class="menu">
                        <img src="./images/user.png">
                        <p>마이 페이지</p>
                        <p>좋아요 누른 코스</p>
                        <p>내가 작성한 데이트 코스</p>
                    </div>
                </a>
                <a href="#">
                    <div class="menu">
                        <img src="./images/commynuty.png">
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



    <!---------------------------- 로그인 모달 ------------------------------ -->
    <div id="login_modal">
        <div class="modal_header">
            <h2 class="modal-title">
                <span class="modal_logo">뚜벅데이트</span> 로그인
            </h2>
            <button type="button" class="modal_close">X</button> <!--닫기 버튼-->
        </div>
        <div class="modal_body">
            <form method="post" id="signInForm">
                <table class="modal_table">
                    <tr>
                        <td class="mlabel">
                            <p>
                                <strong>아이디</strong>
                                <span id="idCheck"></span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="text" class="modal_input" id="signInId" placeholder="최대 10자"></td>
                    </tr>
                    <tr>
                        <td class="mlabel">
                            <p>
                                <strong>비밀번호</strong>
                                <span id="pwCheck"></span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="password" class="modal_input" id="signInPw" placeholder="최소 8자"></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" id="auto_login" name="autoLogin"> 자동 로그인
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button type="button" class="m_button" id="signIn-btn">로그인</button>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button type="button" class="m_button" id="join-btn">회원가입</button>
                        </td>
                    </tr>
                </table>
            </form >
        </div>
    </div>






    <!------------------------------ 회원가입 모달 --------------------------------->
    <div id="join_modal">
        <div class="modal_header">
            <h2 class="modal-title">
                <span class="modal_logo">뚜벅데이트</span> 회원가입
            </h2>
            <button type="button" class="modal_close">X</button> <!--닫기 버튼-->
        </div>
        <div class="modal_body" >
            <form method="post" id="joinForm">
                <table class="modal_table">
                    <tr>
                        <td class="mlabel">
                            <p>
                                <strong>아이디</strong>
                                <span id="idChk"></span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="text" id="user_id" class="modal_input" placeholder="최대 10자"></td>
                    </tr>
                    <tr>
                        <td class="mlabel">
                            <p>
                                <strong>비밀번호</strong>
                                <span id="pwChk"></span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="password" id="password" class="modal_input" placeholder="최소 8자"></td>
                    </tr>
                    <tr>
                        <td class="mlabel">
                            <p>
                                <strong>비밀번호 확인</strong>
                                <span id="pwChk2"></span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="password" id="password_check" class="modal_input" placeholder="최소 8자"></td>
                    </tr>
                    <tr>
                        <td class="mlabel">
                            <p>
                                <strong>이름</strong>
                                <span id="nameChk"></span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="text" id="user_name" class="modal_input" placeholder="한글로 최대 6자"></td>
                    </tr>
                    <tr>
                        <td>
                            <button type="button" id="signup-btn" class="m_button">회원가입</button>
                        </td>
                    </tr>
                </table>
            </form >
        </div>
    </div>
    



    <script>
        $("#login").click(function(){
            $("#login_modal").css("display", "block")
        })
        $("#join").click(function(){
            $("#join_modal").css("display", "block")
        })
        $("#join-btn").click(function(){
            $("#join_modal").css("display", "block")
        })
        $(".modal_close").on("click", function(){
            $(this).parent().parent().css("display", "none")
        })



        $(function() {
       
            const getIdCheck= RegExp(/^[a-zA-Z0-9]{4,14}$/);
            const getPwCheck= RegExp(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/);
            const getName= RegExp(/^[가-힣]+$/);
            const getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
            let chk1 = false, chk2 = false, chk3 = false, chk4 = false;
           
            //회원가입 검증~~
            //ID 입력값 검증.
            $('#user_id').on('keyup', function() {
                if($("#user_id").val() === ""){
                    $('#user_id').css("background-color", "pink");
                    $('#idChk').html('<b style="font-size:14px;color:red;">[아이디를 입력하세요.]</b>');
                    chk1 = false;
                }
               
                //아이디 유효성검사
                else if(!getIdCheck.test($("#user_id").val())){
                    $('#user_id').css("background-color", "pink");
                    $('#idChk').html('<b style="font-size:14px;color:red;">[영문자,숫자 4-14자]</b>');      
                    chk1 = false;
                }
                //ID 중복확인 비동기 처리
                else {
                    //ID 중복확인 비동기 통신
                    const userId = $(this).val();
                    console.log(userId);
                   
                    $.ajax({
                        type: "POST",
                        url: "/ttubeok/user/checkId",  
                        headers: {
                            "Content-Type": "application/json"
                        },
                        dataType: "text",
                        data: userId,
                        success: function(result) {
                            if(result === "OK") {
                                $("#user_id").css("background-color", "aqua");
                                $("#idChk").html("<b style='font-size:14px; color:blue;'>[사용 가능한 아이디입니다.]</b>");                        
                                chk1 = true;
                            } else {
                                $("#user_id").css("background-color", "pink");
                                $("#idChk").html("<b style='font-size:14px; color:red;'>[중복된 아이디입니다.]</b>");                        
                                chk1 = false;
                            }
                        },
                        error: function() {
                            console.log("id 중복확인 통신 실패!");
                        }
                    });
                }
            });
           
            //패스워드 입력값 검증.
            $('#password').on('keyup', function() {
                //비밀번호 공백 확인
                if($("#password").val() === ""){
                    $('#password').css("background-color", "pink");
                    $('#pwChk').html('<b style="font-size:14px;color:red;">[비밀번호를 입력하세요.]</b>');
                    chk2 = false;
                }                
                //비밀번호 유효성검사
                else if(!getPwCheck.test($("#password").val()) || $("#password").val().length < 8){
                    $('#password').css("background-color", "pink");
                    $('#pwChk').html('<b style="font-size:14px;color:red;">[특수문자 포함 8자이상]</b>');
                    chk2 = false;
                } else {
                    $('#password').css("background-color", "aqua");
                    $('#pwChk').html('<b style="font-size:14px;color:green;">[사용 가능한 비밀번호입니다.]</b>');
                    chk2 = true;
                }
               
            });
           
            //패스워드 확인란 입력값 검증.
            $('#password_check').on('keyup', function() {
                //비밀번호 확인란 공백 확인
                if($("#password_check").val() === ""){
                    $('#password_check').css("background-color", "pink");
                    $('#pwChk2').html('<b style="font-size:14px;color:red;">[비밀번호를 입력하세요.]</b>');
                    chk3 = false;
                }                
                //비밀번호 확인란 유효성검사
                else if($("#password").val() != $("#password_check").val()){
                    $('#password_check').css("background-color", "pink");
                    $('#pwChk2').html('<b style="font-size:14px;color:red;">[비밀번호가 일치하지 않습니다.]</b>');
                    chk3 = false;
                } else {
                    $('#password_check').css("background-color", "aqua");
                    //$('#pwChk2').html('<b style="font-size:14px;color:green;">[참 잘했어요]</b>');
                    $('#pwChk2').html('<img src="./images/pwchk2.png" width="15px" height="15px">');
                    chk3 = true;
                }
               
            });
           
            //이름 입력값 검증.
            $('#user_name').on('keyup', function() {
                //이름값 공백 확인
                if($("#user_name").val() === ""){
                    $('#user_name').css("background-color", "pink");
                    $('#nameChk').html('<b style="font-size:14px;color:red;">[이름을 입력하세요.]</b>');
                    chk4 = false;
                }                
                //이름값 유효성검사
                else if(!getName.test($("#user_name").val())){
                    $('#user_name').css("background-color", "pink");
                    $('#nameChk').html('<b style="font-size:14px;color:red;">[한글로 최대 6자]</b>');
                    chk4 = false;
                } else {
                    $('#user_name').css("background-color", "aqua");
                    //$('#nameChk').html('<b style="font-size:14px;color:green;">[참 잘했어요]</b>');
                    $('#nameChk').html('<img src="./images/pwchk2.png" width="15px" height="15px">');
                    chk4 = true;
                }
               
            });
           
           



           // 회원가입 버튼 클릭이벤트
            $('#signup-btn').click(function(e) {
                if(chk1 && chk2 && chk3 && chk4) {
                    //아이디 정보
                    const id = $("#user_id").val();
                    console.log("id: " + id);
                    //패스워드 정보
                    const pw = $("#password").val();
                    console.log("pw: " + pw);
                    //이름 정보
                    const name = $("#user_name").val();
                    console.log("name: " + name);
                   
                    const user = {
                    	userId: id,
                        password: pw,
                        name: name
                    };
                   
                    //클라이언트에서 서버와 통신하는 ajax함수(비동기 통신)
                    $.ajax({
                        type: "POST", //서버에 전송하는 HTTP요청 방식
                        url: "/ttubeok/user/", //서버 요청 URI
                        headers: {
                            "Content-Type": "application/json"
                        }, //요청 헤더 정보
                        dataType: "text", //응답받을 데이터의 형태
                        data: JSON.stringify(user), //서버로 전송할 데이터
                        success: function(result) { //함수의 매개변수는 통신성공시의 데이터가 저장될 곳.
                            console.log("통신 성공!: " + result);
                            if(result === "joinSuccess") {
                                alert("회원가입에 성공했습니다!");
                                location.href="/ttubeok";
                            } else {
                                alert("회원가입에 실패했습니다!");
                            }
                        }, //통신 성공시 처리할 내용들을 함수 내부에 작성.
                        error: function() {
                            console.log("통신 실패!");
                        } //통신 실패 시 처리할 내용들을 함수 내부에 작성.
                    });
               
                } else {
                    alert('입력정보를 다시 확인하세요.');          
                }
            });
           
            ///////////////////////////////////////////////////////////////////////////////////////////
           

            //로그인 검증~~
            //ID 입력값 검증.
            $('#signInId').on('keyup', function() {
                if($("#signInId").val() == ""){
                    $('#signInId').css("background-color", "pink");
                    $('#idCheck').html('<b style="font-size:14px;color:red;">[아이디를 입력하세요.]</b>');
                    chk1 = false;
                }      
               
                //아이디 유효성검사
                else if(!getIdCheck.test($("#signInId").val())){
                    $('#signInId').css("background-color", "pink");
                    $('#idCheck').html('<b style="font-size:14px;color:red;">[영문자,숫자 4-14자~]</b>');  
                    chk1 = false;
                } else {
                    $('#signInId').css("background-color", "aqua");
                    $('#idCheck').html('<b style="font-size:14px;color:green;">[참 잘했어요]</b>');
                    chk1 = true;
                }
            });
           
            //패스워드 입력값 검증.
            $('#signInPw').on('keyup', function() {
                //비밀번호 공백 확인
                if($("#signInPw").val() === ""){
                    $('#signInPw').css("background-color", "pink");
                    $('#pwCheck').html('<b style="font-size:14px;color:red;">[비밀번호를 입력하세요.]</b>');
                    chk2 = false;
                }                
                //비밀번호 유효성검사
                else if(!getPwCheck.test($("#signInPw").val()) || $("#signInPw").val().length < 8){
                    $('#signInPw').css("background-color", "pink");
                    $('#pwCheck').html('<b style="font-size:14px;color:red;">[특수문자 포함 8자이상]</b>');
                    chk2 = false;
                } else {
                    $('#signInPw').css("background-color", "aqua");
                    $('#pwCheck').html('<b style="font-size:14px;color:green;">[참 잘했어요]</b>');
                    chk2 = true;
                }
               
            }); 
           
            //로그인 버튼 클릭이벤트
            $("#signIn-btn").click(function() {
                if(chk1 && chk2) {           	
                    //ajax통신으로 서버에서 값 받아오기
                    const id = $('#signInId').val();
                    const pw = $('#signInPw').val();
                    // is()함수는 괄호 안 상태여부를 판단하여 논리값을 반환
                    const autoLogin = $("input[name=autoLogin]").is(":checked");  // name속성이 autoLogin인 input 태그
                   
                    console.log("id: " + id);
                    console.log("pw: " + pw);
                    console.log("auto: " + autoLogin);
                   
                    const userInfo = {
                            userId : id,
                            password : pw,
                            autoLogin : autoLogin
                    };
                   
                    $.ajax({
                        type: "POST",
                        url: "/ttubeok/user/loginCheck",
                        headers: {
                            "Content-Type": "application/json"
                        },
                        data: JSON.stringify(userInfo),
                        dataType : "text",
                        success: function(data) {
                            console.log("result: " + data);
                            if(data === "idFail") {
                                $('#signInId').css("background-color", "pink");
                                $('#idCheck').html('<b style="font-size:14px;color:red;">[등록되지 않은 ID입니다.]</b>');
                                $('#signInPw').val("");
                                $('#signInId').focus();
                                chk2 = false;
                            } else if(data === "pwFail") {
                                $('#signInPw').css("background-color", "pink");
                                $('#signInPw').val("");
                                $('#signInPw').focus();
                                $('#pwCheck').html('<b style="font-size:14px;color:red;">[비밀번호가 일치하지 않습니다.]</b>');
                                chk2 = false;
                            } else if(data === "loginSuccess") {
                                self.location="/ttubeok";
                            }
                        }
                    });
                   
                } else {
                    alert("입력정보를 다시 확인하세요!");
                }
            });
           
        });//end JQuery


    </script>

</body>
</html>
</body>
</html>