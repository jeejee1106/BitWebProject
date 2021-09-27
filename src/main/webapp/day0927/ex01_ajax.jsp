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
<style type="text/css">
	#show{
		font-family: 'Gaegu';
		font-size: 1.3em;
		margin-top: 30px;
	}
</style>
</head>
<body>
	<button type="button" class="btn btn-info" id="btn1">json읽기</button>
	<button type="button" class="btn btn-info" id="btn2">infoToJson.jsp읽기</button> <!-- 9월24일자 파일 -->
	<div id="show"></div>
	
	<script type="text/javascript">
		$("#btn1").click(function(){
			$.ajax({
				type: "get",
				url: "data1.json",
				dataType: "json",
				success: function(data){ //data에는 url로 준 data1.json파일이 들어감.
					var s = "";
					$.each(data, function(i, elt){
						s+= "<div class='alert alert-success' style='width:500px;'>";
						s+= "index : " + i + "<br>";
						s+= "과목명 : " + elt.term + "<br>";
						s+= "과목설명 : " + (elt.definition==null?"설명없음":elt.definition) + "<br>";
						s+= "과정 : "; //데이커 값이 null일 경우 삼항연자라로도 출력해보고, if문으로도 출력해 보았다!
						if(elt.quote==null){
							s+="과정없음";
						} else{
							$.each(elt.quote, function(i2, elt2){
								s+= "[" + elt2 + "]";
							});
						}
						s+="<br>";
						s+= "저자 : " + (elt.author==null?"작자미상":elt.author);
						s+= "</div>";
					});
					$("#show").html(s);
				}
			});
		});
		
		$("#btn2").click(function(){
			$.ajax({
				type: "get",
				url: "../day0924_ajax/infoToJson.jsp",
				dataType: "json",
				success: function(data){
					var s = "";
					$.each(data, function(i, elt){
						s+= "<div class='alert alert-danger' style='width:500px;'>";
						s+= "Index : " + i + "<br>"
						s+= "Num : " + elt.num + "이름 : " + elt.name + "<br>";
						s+= "나이 : " + elt.age + "세";
						s+= "<img src='" + elt.photo + "' width='100'><br>";
						s+= "</div>";
					});
					$("#show").html(s);
				}
			});
		});
	</script>
</body>
</html>