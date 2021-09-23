<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
   href="https://fonts.googleapis.com/css2?family=Dokdo&family=Gaegu&family=Gugi&family=Nanum+Pen+Script&display=swap"
   rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
</head>
<body>
	<h2>다른 폴더의 파일 include하기</h2>
	<h4>9월 17일 예제 3번</h4>
	<jsp:include page="../day0917/ex03_array.jsp"></jsp:include>
	<%-- <jsp:include page="../day0917/ex03_array.jsp"/> 닫는태그 없이 마지막에 슬래시 써줘도 된다!--%>
	
	<hr>
	
	<h4>9월 16일 예제 7번</h4>
	<jsp:include page="../day0916/ex07_table.html"></jsp:include>
	
</body>
</html>