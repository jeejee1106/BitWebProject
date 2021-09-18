<%@page import="team.TeamDTO"%>
<%@page import="team.TeamDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 한글 인코딩
	request.setCharacterEncoding("UTF-8");
	
	//2. 입력값 읽기
	String  name = request.getParameter("name");
	String driver = request.getParameter("driver");
	System.out.println(driver); //체크 시 어떤 값이 들어오는지 확인용. 체크 안할 경우 null, 체크 할 경우 on
	String addr = request.getParameter("addr");
	
	//3. DTO선언
	TeamDTO dto = new TeamDTO();
	dto.setName(name);
	dto.setDriver(driver==null?"없음":"있음");
	dto.setAddr(addr);
	
	//4. DAO선언
	TeamDAO dao = new TeamDAO();
	
	//5. insert메서드 호출
	dao.teamInsert(dto);
	
	//6. 목록 파일로 이동
	response.sendRedirect("teamlist.jsp"); //해당 파일로 이동



%>