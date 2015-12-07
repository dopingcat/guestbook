<%@page import="com.hanains.guestbook.dao.GuestBookDao"%>
<%@page import="com.hanains.guestbook.vo.GuestBookVo"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
String password = request.getParameter("password");
String message = request.getParameter("message");

GuestBookVo vo = new GuestBookVo();
vo.setName(name);
vo.setPassword(password);
vo.setMessage(message);

GuestBookDao dao = new GuestBookDao();

dao.insert(vo);
response.sendRedirect("/guestbook");
%>