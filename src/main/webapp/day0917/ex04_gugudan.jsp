<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP로 구구단 출력하기</title>
<link
	href="https://fonts.googleapis.com/css2?family=Dokdo&family=Gaegu&family=Gugi&family=Nanum+Pen+Script&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<style type="text/css">
table {
	width: 80%;
	min-width: 400px;
	border-collapse: collapse;
}

tr {
	height: 40px;
}

th, td {
	font-size: 1.2em;
	text-align: center;
	border: 1px solid blue;
}
</style>
</head>
<body>
	<table>
		<caption>
			<b style="font-size: 2em;">[구구단]</b>
		</caption>
		<tr>
			<%
			for (int dan = 2; dan <= 9; dan++) {
			%>
			<th bgcolor='skyblue'><%=dan%>단</th>
			<%
			}
			%>
		</tr>

		<%
		for (int i = 1; i <= 9; i++) {
		%>
		<tr>
			<%
			for (int j = 2; j <= 9; j++) {
			%>
			<td><%=j%>x<%=i%>=<%=i * j%></td>
			<%
			}
			%>
		</tr>
		<%
		}
		%>

	</table>
</body>
</html>