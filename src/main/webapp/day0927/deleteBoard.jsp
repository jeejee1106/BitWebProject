<%@page import="org.json.simple.JSONObject"%>
<%@page import="ajaxboard.AjaxBoardDTO"%>
<%@page import="ajaxboard.AjaxBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		//num 읽기
		String num = request.getParameter("num");
		
		//Dao선언,삭제메서드 호출
		AjaxBoardDAO db = new AjaxBoardDAO();
		db.deleteBoard(num);
	%>