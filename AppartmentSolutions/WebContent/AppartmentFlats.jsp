<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of flats</title>
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
	String qry="select * from flats";
	ResultSet rs=st.executeQuery(qry);
	out.println("<table border='1'><caption><h1>Flat Details</h1>"
			+ "</caption>");
	out.println("<tr><th>APPARTMENT-ID</th><th>flatno</th><th>ownername</th><th>designation</th><th>PHONENO:</th></tr>");
	while(rs.next())
	{
		out.println("<tr><td>"+rs.getString("appid")+"</td><td>"+rs.getString("flatno")+"</td><td>"+rs.getString("ownername")+"</td><td>"+rs.getString("designation")+"</td><td>"+rs.getString("phoneno")+"</td></tr>");
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