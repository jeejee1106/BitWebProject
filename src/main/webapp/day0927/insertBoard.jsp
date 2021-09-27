<%@page import="ajaxboard.AjaxBoardDAO"%>
<%@page import="ajaxboard.AjaxBoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
	    request.setCharacterEncoding("UTF-8");
	    String writer = request.getParameter("writer");
	    String subject = request.getParameter("subject");
	    String content = request.getParameter("content");
	    String avata = request.getParameter("avata");
	    
	    //dto선언
	    AjaxBoardDTO dto = new AjaxBoardDTO();
	    dto.setWriter(writer);
	    dto.setSubject(subject);
	    dto.setContent(content);
	    dto.setAvata(avata);
	    
	    //insert
	    AjaxBoardDAO db = new AjaxBoardDAO();
	    db.insertBoard(dto);
	%>