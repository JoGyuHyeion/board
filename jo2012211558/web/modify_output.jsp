<%@page import="dao.*"%>
<%@page import="bean.*"%>
<%@ page language="java" contentType="text/html; charset=euc-kr" %>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("euc-kr"); %>

<%
int num  = Integer.parseInt(request.getParameter("num"));
String name = request.getParameter("name");
String pass = request.getParameter("pass");
String email = request.getParameter("email");
String title = request.getParameter("title");
String contents = request.getParameter("contents");


Model model = new Model();
ModelDao dao = new ModelDaoFactory().modelDao();

model.setName(name);
model.setPass(pass);
model.setEmail(email);
model.setTitle(title);
model.setContents(contents);
model.setNum(num);

dao.update(model);

response.sendRedirect("/jsp/listboard.jsp");
%>