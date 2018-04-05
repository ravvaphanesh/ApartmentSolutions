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
<form name='f1' method='get' action="update_aa.jsp">
<table width="40%">
<caption><h1>update  Details</h1></caption>
<tr><td>Amount</td> <td> <input type='text' name='amount' value='amount'> </td></tr>
<tr><td>status</td> <td> <input type='text' name='status' value='status'> </td></tr>
<tr><td colspan='2' align='center'><input type='submit' name='submit' value='update'></td></tr>
</table>
</form>
</center>

</body>
</html>