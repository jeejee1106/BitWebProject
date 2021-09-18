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
	<%
	//get방식일 경우 톰캣8부터는 한글 변환해도 안깨짐. 주소창에 데이터가 다 나옴
	//혹시나 한글이 깨진다??? name = new String(name.getBytes("8859_1"),"UTF-8"); 이런식으로 해줘야함 ㅜㅜ
	//ex06_form.html에서 보낸 폼 데이터 읽기
	String name = request.getParameter("name");
	String pass = request.getParameter("pass");
	%>
	
	<h2>이름 : <%=name%></h2>
	<h2>비밀번호 : <%=pass%></h2>
	
	<a href="ex06_form.html">다시입력</a>
	<a href="javascritp:history.back()">다시입력</a>
</body>
</html>