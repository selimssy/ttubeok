<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>파일 업로드하기</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	// 파일 업로드 name 값을 각각 다르게 하는 변수
	var cnt = 1;
	
	// 파일 추가를 클릭시 동적으로 파일 업로드를 추가할 것이라는 것
	// name 속성의 값으로 'file'+cnt 를 설정함으로써 값을 다르게 해준다
	function fn_addFile() {
		$("#d_file").append("<br>"+"<input  type='file' name='file"+cnt+"' />");
		cnt++;
	}
</script>

</head>
<body>
	<h1>파일 업로드 하기</h1>
	
	<!-- enctype : 파일 업로드시 반드시 mutilpart/form-data로 설정해야 한다 -->
	<form method="post" action="${contextPath}/upload" enctype="multipart/form-data">
		<label>아이디:</label>
    		<input type="text" name="id"><br>
		<label>이름:</label>
    		<input type="text" name="name"><br>
		
		<input type="button"  value="파일추가" onClick="fn_addFile()"/><br>
		<!-- 자바 스크립트를 이용해 <div> 태그안에 파일 업로드를 추가 -->
		<div id="d_file">
  		</div>
		<input type="submit"  value="업로드"/>
	</form>
</body>
</html>