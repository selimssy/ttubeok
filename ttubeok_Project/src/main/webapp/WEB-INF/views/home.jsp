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
        
        	<c:if test="${login == null}" >  <!-- ????????? ??????????????? ?????? -->
	            <nav class="main_nav">
	                <ul>
	                    <a href="#" id="login"><li>?????????</li></a>
	                    <a href="#" id="join"><li>????????????</li></a>                
	                </ul>    
	           </nav>     
           </c:if>                
           <c:if test="${login != null}">  <!-- ????????? ???????????? ?????? -->
           		<nav class="main_nav">
           			<ul>
           				<a href="/ttubeok/user/logout" id="logout" onclick="return confirm('???????????? ???????????????????')"><li>????????????</li></a>
           			</ul>
           		</nav>
           </c:if>

            
            <div class="title">
                <img src="./images/footlogo.png" width="150px" height="150px">
                <span class="tfont">?????? ?????????</span>
            </div>

            <div class="menuboard">
                <a href="#">
                    <div class="menu">
                        <img src="./images/route.png">
                        <p>?????? ??????</p>
                        <p>????????? ?????? ??????, ??????</p>
                    </div>
                </a>
                <a href="#">
                    <div class="menu">
                        <img src="./images/user.png">
                        <p>?????? ?????????</p>
                        <p>????????? ?????? ??????</p>
                        <p>?????? ????????? ????????? ??????</p>
                    </div>
                </a>
                <a href="#">
                    <div class="menu">
                        <img src="./images/commynuty.png">
                        <p>????????????</p>
                        <p>????????? ?????? ??????</p>
                        <p>?????? ?????????</p>
                    </div>
                </a>
            </div>
           


        </div>
    </div>

    <footer>
        <div class="fcontainer">
            <span>Copyright ??? By Ali 2022 </span>
        </div>
    </footer>



    <!---------------------------- ????????? ?????? ------------------------------ -->
    <div id="login_modal">
        <div class="modal_header">
            <h2 class="modal-title">
                <span class="modal_logo">???????????????</span> ?????????
            </h2>
            <button type="button" class="modal_close">X</button> <!--?????? ??????-->
        </div>
        <div class="modal_body">
            <form method="post" id="signInForm">
                <table class="modal_table">
                    <tr>
                        <td class="mlabel">
                            <p>
                                <strong>?????????</strong>
                                <span id="idCheck"></span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="text" class="modal_input" id="signInId" placeholder="?????? 10???"></td>
                    </tr>
                    <tr>
                        <td class="mlabel">
                            <p>
                                <strong>????????????</strong>
                                <span id="pwCheck"></span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="password" class="modal_input" id="signInPw" placeholder="?????? 8???"></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" id="auto_login" name="autoLogin"> ?????? ?????????
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button type="button" class="m_button" id="signIn-btn">?????????</button>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button type="button" class="m_button" id="join-btn">????????????</button>
                        </td>
                    </tr>
                </table>
            </form >
        </div>
    </div>






    <!------------------------------ ???????????? ?????? --------------------------------->
    <div id="join_modal">
        <div class="modal_header">
            <h2 class="modal-title">
                <span class="modal_logo">???????????????</span> ????????????
            </h2>
            <button type="button" class="modal_close">X</button> <!--?????? ??????-->
        </div>
        <div class="modal_body" >
            <form method="post" id="joinForm">
                <table class="modal_table">
                    <tr>
                        <td class="mlabel">
                            <p>
                                <strong>?????????</strong>
                                <span id="idChk"></span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="text" id="user_id" class="modal_input" placeholder="?????? 10???"></td>
                    </tr>
                    <tr>
                        <td class="mlabel">
                            <p>
                                <strong>????????????</strong>
                                <span id="pwChk"></span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="password" id="password" class="modal_input" placeholder="?????? 8???"></td>
                    </tr>
                    <tr>
                        <td class="mlabel">
                            <p>
                                <strong>???????????? ??????</strong>
                                <span id="pwChk2"></span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="password" id="password_check" class="modal_input" placeholder="?????? 8???"></td>
                    </tr>
                    <tr>
                        <td class="mlabel">
                            <p>
                                <strong>??????</strong>
                                <span id="nameChk"></span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="text" id="user_name" class="modal_input" placeholder="????????? ?????? 6???"></td>
                    </tr>
                    <tr>
                        <td>
                            <button type="button" id="signup-btn" class="m_button">????????????</button>
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
            const getName= RegExp(/^[???-???]+$/);
            const getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
            let chk1 = false, chk2 = false, chk3 = false, chk4 = false;
           
            //???????????? ??????~~
            //ID ????????? ??????.
            $('#user_id').on('keyup', function() {
                if($("#user_id").val() === ""){
                    $('#user_id').css("background-color", "pink");
                    $('#idChk').html('<b style="font-size:14px;color:red;">[???????????? ???????????????.]</b>');
                    chk1 = false;
                }
               
                //????????? ???????????????
                else if(!getIdCheck.test($("#user_id").val())){
                    $('#user_id').css("background-color", "pink");
                    $('#idChk').html('<b style="font-size:14px;color:red;">[?????????,?????? 4-14???]</b>');      
                    chk1 = false;
                }
                //ID ???????????? ????????? ??????
                else {
                    //ID ???????????? ????????? ??????
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
                                $("#idChk").html("<b style='font-size:14px; color:blue;'>[?????? ????????? ??????????????????.]</b>");                        
                                chk1 = true;
                            } else {
                                $("#user_id").css("background-color", "pink");
                                $("#idChk").html("<b style='font-size:14px; color:red;'>[????????? ??????????????????.]</b>");                        
                                chk1 = false;
                            }
                        },
                        error: function() {
                            console.log("id ???????????? ?????? ??????!");
                        }
                    });
                }
            });
           
            //???????????? ????????? ??????.
            $('#password').on('keyup', function() {
                //???????????? ?????? ??????
                if($("#password").val() === ""){
                    $('#password').css("background-color", "pink");
                    $('#pwChk').html('<b style="font-size:14px;color:red;">[??????????????? ???????????????.]</b>');
                    chk2 = false;
                }                
                //???????????? ???????????????
                else if(!getPwCheck.test($("#password").val()) || $("#password").val().length < 8){
                    $('#password').css("background-color", "pink");
                    $('#pwChk').html('<b style="font-size:14px;color:red;">[???????????? ?????? 8?????????]</b>');
                    chk2 = false;
                } else {
                    $('#password').css("background-color", "aqua");
                    $('#pwChk').html('<b style="font-size:14px;color:green;">[?????? ????????? ?????????????????????.]</b>');
                    chk2 = true;
                }
               
            });
           
            //???????????? ????????? ????????? ??????.
            $('#password_check').on('keyup', function() {
                //???????????? ????????? ?????? ??????
                if($("#password_check").val() === ""){
                    $('#password_check').css("background-color", "pink");
                    $('#pwChk2').html('<b style="font-size:14px;color:red;">[??????????????? ???????????????.]</b>');
                    chk3 = false;
                }                
                //???????????? ????????? ???????????????
                else if($("#password").val() != $("#password_check").val()){
                    $('#password_check').css("background-color", "pink");
                    $('#pwChk2').html('<b style="font-size:14px;color:red;">[??????????????? ???????????? ????????????.]</b>');
                    chk3 = false;
                } else {
                    $('#password_check').css("background-color", "aqua");
                    //$('#pwChk2').html('<b style="font-size:14px;color:green;">[??? ????????????]</b>');
                    $('#pwChk2').html('<img src="./images/pwchk2.png" width="15px" height="15px">');
                    chk3 = true;
                }
               
            });
           
            //?????? ????????? ??????.
            $('#user_name').on('keyup', function() {
                //????????? ?????? ??????
                if($("#user_name").val() === ""){
                    $('#user_name').css("background-color", "pink");
                    $('#nameChk').html('<b style="font-size:14px;color:red;">[????????? ???????????????.]</b>');
                    chk4 = false;
                }                
                //????????? ???????????????
                else if(!getName.test($("#user_name").val())){
                    $('#user_name').css("background-color", "pink");
                    $('#nameChk').html('<b style="font-size:14px;color:red;">[????????? ?????? 6???]</b>');
                    chk4 = false;
                } else {
                    $('#user_name').css("background-color", "aqua");
                    //$('#nameChk').html('<b style="font-size:14px;color:green;">[??? ????????????]</b>');
                    $('#nameChk').html('<img src="./images/pwchk2.png" width="15px" height="15px">');
                    chk4 = true;
                }
               
            });
           
           



           // ???????????? ?????? ???????????????
            $('#signup-btn').click(function(e) {
                if(chk1 && chk2 && chk3 && chk4) {
                    //????????? ??????
                    const id = $("#user_id").val();
                    console.log("id: " + id);
                    //???????????? ??????
                    const pw = $("#password").val();
                    console.log("pw: " + pw);
                    //?????? ??????
                    const name = $("#user_name").val();
                    console.log("name: " + name);
                   
                    const user = {
                    	userId: id,
                        password: pw,
                        name: name
                    };
                   
                    //????????????????????? ????????? ???????????? ajax??????(????????? ??????)
                    $.ajax({
                        type: "POST", //????????? ???????????? HTTP?????? ??????
                        url: "/ttubeok/user/", //?????? ?????? URI
                        headers: {
                            "Content-Type": "application/json"
                        }, //?????? ?????? ??????
                        dataType: "text", //???????????? ???????????? ??????
                        data: JSON.stringify(user), //????????? ????????? ?????????
                        success: function(result) { //????????? ??????????????? ?????????????????? ???????????? ????????? ???.
                            console.log("?????? ??????!: " + result);
                            if(result === "joinSuccess") {
                                alert("??????????????? ??????????????????!");
                                location.href="/ttubeok";
                            } else {
                                alert("??????????????? ??????????????????!");
                            }
                        }, //?????? ????????? ????????? ???????????? ?????? ????????? ??????.
                        error: function() {
                            console.log("?????? ??????!");
                        } //?????? ?????? ??? ????????? ???????????? ?????? ????????? ??????.
                    });
               
                } else {
                    alert('??????????????? ?????? ???????????????.');          
                }
            });
           
            ///////////////////////////////////////////////////////////////////////////////////////////
           

            //????????? ??????~~
            //ID ????????? ??????.
            $('#signInId').on('keyup', function() {
                if($("#signInId").val() == ""){
                    $('#signInId').css("background-color", "pink");
                    $('#idCheck').html('<b style="font-size:14px;color:red;">[???????????? ???????????????.]</b>');
                    chk1 = false;
                }      
               
                //????????? ???????????????
                else if(!getIdCheck.test($("#signInId").val())){
                    $('#signInId').css("background-color", "pink");
                    $('#idCheck').html('<b style="font-size:14px;color:red;">[?????????,?????? 4-14???~]</b>');  
                    chk1 = false;
                } else {
                    $('#signInId').css("background-color", "aqua");
                    $('#idCheck').html('<b style="font-size:14px;color:green;">[??? ????????????]</b>');
                    chk1 = true;
                }
            });
           
            //???????????? ????????? ??????.
            $('#signInPw').on('keyup', function() {
                //???????????? ?????? ??????
                if($("#signInPw").val() === ""){
                    $('#signInPw').css("background-color", "pink");
                    $('#pwCheck').html('<b style="font-size:14px;color:red;">[??????????????? ???????????????.]</b>');
                    chk2 = false;
                }                
                //???????????? ???????????????
                else if(!getPwCheck.test($("#signInPw").val()) || $("#signInPw").val().length < 8){
                    $('#signInPw').css("background-color", "pink");
                    $('#pwCheck').html('<b style="font-size:14px;color:red;">[???????????? ?????? 8?????????]</b>');
                    chk2 = false;
                } else {
                    $('#signInPw').css("background-color", "aqua");
                    $('#pwCheck').html('<b style="font-size:14px;color:green;">[??? ????????????]</b>');
                    chk2 = true;
                }
               
            }); 
           
            //????????? ?????? ???????????????
            $("#signIn-btn").click(function() {
                if(chk1 && chk2) {           	
                    //ajax???????????? ???????????? ??? ????????????
                    const id = $('#signInId').val();
                    const pw = $('#signInPw').val();
                    // is()????????? ?????? ??? ??????????????? ???????????? ???????????? ??????
                    const autoLogin = $("input[name=autoLogin]").is(":checked");  // name????????? autoLogin??? input ??????
                   
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
                                $('#idCheck').html('<b style="font-size:14px;color:red;">[???????????? ?????? ID?????????.]</b>');
                                $('#signInPw').val("");
                                $('#signInId').focus();
                                chk2 = false;
                            } else if(data === "pwFail") {
                                $('#signInPw').css("background-color", "pink");
                                $('#signInPw').val("");
                                $('#signInPw').focus();
                                $('#pwCheck').html('<b style="font-size:14px;color:red;">[??????????????? ???????????? ????????????.]</b>');
                                chk2 = false;
                            } else if(data === "loginSuccess") {
                                self.location="/ttubeok";
                            }
                        }
                    });
                   
                } else {
                    alert("??????????????? ?????? ???????????????!");
                }
            });
           
        });//end JQuery


    </script>

</body>
</html>
</body>
</html>