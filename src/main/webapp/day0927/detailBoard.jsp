<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="ajaxboard.AjaxBoardDTO"%>
<%@page import="ajaxboard.AjaxBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	//제목을 클릭하면 글 내용, 시간 등 정보가 자세히(?) 보이는 창을 만들거임!
    	//이 파일을 실행하면 받아오는 num값이 없기 때문에 당연히 에러창이 뜬다. url뒤에 직접 ?num=1 과 같은 문자열을 입력해주면 해당 num에 해당하는 데이터가 json형식으로 뜬다.
    	//num읽기
    	String num = request.getParameter("num");
    
	    //dao선언
	    AjaxBoardDAO db = new AjaxBoardDAO();
	    
	    //num에 해강하는 dto얻기
	    AjaxBoardDTO dto = db.getData(num);
	    
	    //dto를 json으로 변환
	    JSONObject ob = new JSONObject();
	    
	    //날짜 타입 문자열 지정
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm");
	    
	    //json에 데이터 추가하기
	    ob.put("num", dto.getNum());
		ob.put("writer", dto.getWriter());
		ob.put("subject", dto.getSubject());
		ob.put("content", dto.getContent());
		ob.put("avata", dto.getAvata());
		ob.put("writeday", sdf.format(dto.getWriteday()));
    %>
    
    <%=ob.toString()%>
