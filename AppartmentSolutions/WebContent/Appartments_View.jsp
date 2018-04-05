<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of appartments</title>
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
	String qry="select * from appartments";
	ResultSet rs=st.executeQuery(qry);
	out.println("<table border='1'><caption><h1>Appartment Details</h1>"
			+ "</caption>");
	out.println("<tr><th>APPARTMENT-ID</th><th>APPARTMENT-NAME</th><th>APPARTMENT-ADDRESS</th><th>APPARTMENT-DISTRICT</th><th>APPARTMENT-PHONENO:</th><th colspan='2'>Operations</th></tr>");
	while(rs.next())
	{
		out.println("<tr><td>"+rs.getString("appid")+"</td><td>"+rs.getString("appname")+"</td><td>"+rs.getString("appaddress")+"</td><td>"+rs.getString("appdistrict")+"</td><td>"+rs.getString("appphoneno")+"</td><td>"+
		"<a href='delete.jsp?appid="+rs.getString("appid")+"'>DELETE</a></td><td><A href='edit.jsp?appphoneno="+rs.getString("appphoneno")+"&appid="+rs.getInt("appid")+"'>Edit</A></td></tr>");
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