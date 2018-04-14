<%@page language="java" import="edu.csbsju.csci230.*"%>
<% UserController cu = (UserController)session.getAttribute("uc"); 
	if(cu == null || !cu.isLoggedIn())
	{
		response.sendRedirect("index.jsp?loggingIn=-4");
		return;
	}
%>