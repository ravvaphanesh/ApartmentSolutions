<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of problems</title>
</head>
<body style="background-color:#7FFFD4">
<%@ page import="java.sql.*" %>
<%
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con;
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","myoracledb","myoracledb");
	Statement st;
	st=con.createStatement();
	String qry="select * from problem";
	ResultSet rs=st.executeQuery(qry);
	out.println("<table border='1'><caption><h1>Appartment Details</h1>"
			+ "</caption>");
	out.println("<tr><th>pid</th><th>APPARTMENT-id</th><th>flatno</th><th>problem date</th><th>problem</th><th>amount</th><th colspan='1'>Operation</th><th>status</th><th colspan='1'>Operation</th></tr>");
	while(rs.next())
	{
		out.println("<tr><td>"+rs.getString("pid")+"</td><td>"+rs.getString("appid")+"</td><td>"+rs.getString("flatno")+"</td><td>"+rs.getString("pdate")+"</td><td>"+rs.getString("problem")+"</td><td>"+rs.getString("amount")+"</td><td>"+
		"<a href='update_a.jsp?amount="+rs.getString("amount")+"'>UPDATE</a></td><td>"+rs.getString("status")+"</td><td><A href='update_a.jsp?status="+rs.getString("status")+"'>UPDATE</A>"+"</td></tr>");
	}
	rs.close();
	out.println("</table>");
}
catch(Exception e)
{
	System.out.println("error:"+e);
}
%>
</body>
</html>