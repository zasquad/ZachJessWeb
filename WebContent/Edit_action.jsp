<%@include file="verifyLogin.jsp" %>

<%@page language="java" import="edu.csbsju.csci230.*"%>
<%String firstname = request.getParameter("FirstName");
String lastname = request.getParameter("LastName");
String username = request.getParameter("Username");
String password = request.getParameter("Password");
String type = request.getParameter("Type");
String status = request.getParameter("Status");
User user = new User(firstname,lastname,username,password,type.charAt(0),status.charAt(0));
UserController uc = (UserController)session.getAttribute("uc");
uc.editUser(user);
response.sendRedirect("Menu.jsp");%>