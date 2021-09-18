<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 기본 설정</title>
<link
   href="https://fonts.googleapis.com/css2?family=Dokdo&family=Gaegu&family=Gugi&family=Nanum+Pen+Script&display=swap"
   rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
</head>
<body>
	<h2>JSP는 HTML5 구조에 자바 코드를 사용할 수 있는 파일이다</h2>
	<h2>Servlet은 확장자가 java이며 자바클래스 구조에 html,css,javascript도 사용할 수 있는 서버 언어이다.</h2>
	<hr>
	<h4>jsp에서는 두가지의 주석 처리가 가능하다.</h4>
	<!-- 주석1 : html기본 주석. 소스보기에서 보인다 -->
	<%-- 주석2 : 소스보기에서 안보인다. 안에 자바코드가 있을 경우 이 주석은 비실행. 위의 html주석은 실행 --%>
	
	<%! %> <!-- 선언문 : 여기서 선언한 변수나 메서드는 클래스의 필드(인스턴스)로 등록된다. 그러므로 위치는 어디에 있던 상관없다.-->
	<% %> <!-- 스크립트 릿 : 여시서 선언한 변수는 지역변수로 등록이 된다. 그래서 이곳의 변수를 html에서 사용하려면 키 스크립트릿 보다 아래에서 사용해야한다.-->
	<%= "happy"%> <!-- 표현식 : 문자열을 출력 -->
</body>
</html>