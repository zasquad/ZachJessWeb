
<%@include file="verifyLogin.jsp" %>
<html>
<head>
<title></title>
</head>
<body>
<%@page language="java" import="edu.csbsju.csci230.*" import="java.util.ArrayList"%>
<%UserController uc = (UserController)session.getAttribute("uc"); %>
Hello User <%= uc.getCurrentUser().getUsername()%>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">

<td colspan="8" rowspan="1" style="vertical-align: top;"><a
href="Add.jsp">ADD A USER</a>
</td>

</tr>
<tr>
<td style="vertical-align: top;">
</td>
<td style="vertical-align: top; text-align: center;">Full name
</td>
<td style="vertical-align: top; text-align: center;">Username
</td>
<td style="vertical-align: top; text-align: center;">Password
</td>
<td style="vertical-align: top; text-align: center;">Type
</td>
<td style="vertical-align: top; text-align: center;">Status
</td>
<td style="vertical-align: top;">
</td>
</tr>
<% 	ArrayList<User> users = uc.getAllUsers();
	for(int i = 0; i<users.size(); i++) 
	{
	%>
<tr>
<td style="vertical-align: top;">
<form method="post" action="Edit.jsp" name="Edit">
    <input name="Edit" value="Edit" type="submit">
    <input name="Username" value=<%=users.get(i).getUsername() %> type="hidden">
</form>
</td>
<td style="vertical-align: top;"><%= users.get(i).getfName() + " "+users.get(i).getlName() %>
</td>
<td style="vertical-align: top;"><%= users.get(i).getUsername() %>
</td>
<td style="vertical-align: top;"><%= users.get(i).getPassword() %>
</td>
<td style="vertical-align: top;"><%= users.get(i).getType() %>
</td>
<td style="vertical-align: top;"><%= users.get(i).getStatus() %>
</td>
<td style="vertical-align: top;">
<form method="post" action="Delete.jsp" name="Delete">
    <input name="Delete" value="Delete" type="submit">
    <input name="Username" value=<%=users.get(i).getUsername() %> type="hidden">
</form>
</td>
</tr>
<%} %>
</tbody>
</table>
</body>
</html>

