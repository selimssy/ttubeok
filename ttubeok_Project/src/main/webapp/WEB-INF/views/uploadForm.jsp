<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>���� ���ε��ϱ�</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	// ���� ���ε� name ���� ���� �ٸ��� �ϴ� ����
	var cnt = 1;
	
	// ���� �߰��� Ŭ���� �������� ���� ���ε带 �߰��� ���̶�� ��
	// name �Ӽ��� ������ 'file'+cnt �� ���������ν� ���� �ٸ��� ���ش�
	function fn_addFile() {
		$("#d_file").append("<br>"+"<input  type='file' name='file"+cnt+"' />");
		cnt++;
	}
</script>

</head>
<body>
	<h1>���� ���ε� �ϱ�</h1>
	
	<!-- enctype : ���� ���ε�� �ݵ�� mutilpart/form-data�� �����ؾ� �Ѵ� -->
	<form method="post" action="${contextPath}/upload" enctype="multipart/form-data">
		<label>���̵�:</label>
    		<input type="text" name="id"><br>
		<label>�̸�:</label>
    		<input type="text" name="name"><br>
		
		<input type="button"  value="�����߰�" onClick="fn_addFile()"/><br>
		<!-- �ڹ� ��ũ��Ʈ�� �̿��� <div> �±׾ȿ� ���� ���ε带 �߰� -->
		<div id="d_file">
  		</div>
		<input type="submit"  value="���ε�"/>
	</form>
</body>
</html>