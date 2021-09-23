<%@page import="team.TeamDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//num읽기
	String num = request.getParameter("num");
	//dao선언
	TeamDAO dao = new TeamDAO();
	//삭제 메서드 호출
	dao.teamDelete(num);
	//teamlist.jsp로 이동
	response.sendRedirect("teamlist.jsp"); //해당 파일로 이동
%>