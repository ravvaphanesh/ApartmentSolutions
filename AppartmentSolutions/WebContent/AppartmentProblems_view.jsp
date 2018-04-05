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
<%@ include file="Loginhomemenu.jsp"%>
<%
try
{
	HttpSession sn=request.getSession();
	String a=(String)sn.getAttribute("flatno");
	String b=(String)sn.getAttribute("appid");
	out.println("<h1>"+a+"</h1>");
	out.println("<h1>"+b+"</h1>");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con;
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","myoracledb","myoracledb");
	PreparedStatement pstmt= con.prepareStatement("Select * from problem where flatno=? and appid=?");
	 pstmt.setString(1, a);
     pstmt.setString(2,b);
     ResultSet rs=pstmt.executeQuery();
     
	out.println("<center><table border='1'><caption><h1>Appartment Problem Details</h1>"
			+ "</caption>");
	out.println("<tr><th>pid</th><th>appid</th><th>flatno</th><th>p.date</th><th>problem</th><th>Amount</th><th>Status</th></tr>");
	while(rs.next())
	{
		out.println("<tr><td>"+rs.getString("pid")+"</td><td>"+rs.getString("appid")+"</td><td>"+rs.getString("flatno")+"</td><td>"+rs.getString("pdate")+"</td><td>"+rs.getString("problem")+"</td><td>"+rs.getString("amount")+"</td><td>"+rs.getString("status")+"</td></tr>");
	}
	out.println("</center></table>");
	rs.close();
	pstmt.close();
	con.close();
}
catch(Exception e)
{
	System.out.println("error:"+e);
}
%>
</body>
</html>