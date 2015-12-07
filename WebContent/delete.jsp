<%@page import="com.hanains.guestbook.dao.GuestBookDao"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String no = request.getParameter("no");
String password = request.getParameter("password");

GuestBookDao dao = new GuestBookDao();

dao.delete(Long.parseLong(no), password);
response.sendRedirect("/guestbook");
%>