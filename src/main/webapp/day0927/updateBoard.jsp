<%@page import="ajaxboard.AjaxBoardDAO"%>
<%@page import="ajaxboard.AjaxBoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
	
	<%
		//post방식으로 보낼것임
		request.setCharacterEncoding("utf-8");//한글 안깨지게
		String num = request.getParameter("unum");
		String writer = request.getParameter("uwriter");
		String subject = request.getParameter("usubject");
		String content = request.getParameter("ucontent");
		String avata = request.getParameter("uavata");
		
		//dto선언
		AjaxBoardDTO dto = new AjaxBoardDTO();
		dto.setNum(num);
		dto.setWriter(writer);
		dto.setSubject(subject);
		dto.setContent(content);
		dto.setAvata(avata);
		
		//update
		AjaxBoardDAO db = new AjaxBoardDAO();
		db.updateBoard(dto);
	%>