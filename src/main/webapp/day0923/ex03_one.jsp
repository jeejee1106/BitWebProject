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
	<h3>two 파일 include하기 - 한글 전달</h3>
	<%	
		//한글을 넣었다면 한글이 깨지지 않게 이 코드를 넣어줘야한다. 위치는 늘 이 곳 이어야 한다.
		request.setCharacterEncoding("utf-8");
	%>	
	<jsp:include page="ex03_two_include.jsp">
		<jsp:param value="이미자" name="name"/>
		<jsp:param value="강남구" name="addr"/>
	</jsp:include>
</body>
</html>