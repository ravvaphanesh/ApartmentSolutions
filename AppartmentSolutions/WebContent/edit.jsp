<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<center>
<%
	String appphoneno=request.getParameter("appphoneno");
	String appid=request.getParameter("appid");
%>
<form name='f1' method='get' action='update.jsp'>
<table width="40%">

<caption><h1>Edit Employee Details</h1></caption>
<tr><td>Appartment phoneno</td> <td> <input type='text' name='appphoneno' value='<%=appphoneno%>'> </td></tr>
<tr><td>Appartment id</td> <td> <input type='text' name='appid' value='<%=appid%>'> </td></tr>
<tr><td colspan='2' align='center'><input type='submit' name='submit' value='update'></td></tr>
</table>

</form>

</center>
</body>
</html>