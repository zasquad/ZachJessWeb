<%@include file="verifyLogin.jsp" %>
<%@page language="java" import="edu.csbsju.csci230.*,java.util.*"%>

<%
    out.println("delete user : " + request.getParameter("Username"));
UserController uc = (UserController)session.getAttribute("uc");
User user = uc.getSpecificUser(request.getParameter("Username"));
uc.deleteUser(user);
response.sendRedirect("Menu.jsp");%>
%>