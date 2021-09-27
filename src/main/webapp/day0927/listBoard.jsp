<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="ajaxboard.AjaxBoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ajaxboard.AjaxBoardDAO"%>
<%@page import="org.json.simple.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
		AjaxBoardDAO db = new AjaxBoardDAO();
		ArrayList<AjaxBoardDTO> list = db.getAllDatas();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm");
		//json 라이브러리 이용해서 json 데이터 생성하기
		JSONArray arr = new JSONArray();
		for(AjaxBoardDTO dto : list){
			JSONObject ob = new JSONObject();
			ob.put("num", dto.getNum());
			ob.put("writer", dto.getWriter());
			ob.put("subject", dto.getSubject());
			ob.put("content", dto.getContent());
			ob.put("avata", dto.getAvata());
			ob.put("writeday", sdf.format(dto.getWriteday()));
			arr.add(ob);
		}
	%>
	
	<%=arr.toString() %>