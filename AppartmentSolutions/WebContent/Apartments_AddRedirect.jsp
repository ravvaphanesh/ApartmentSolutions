<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con;
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","myoracledb","myoracledb");
	int a1=Integer.parseInt(request.getParameter("t1"));
	String a2=request.getParameter("t2");
	String a3=request.getParameter("t3");
	String a4=request.getParameter("t4");
	String a5=request.getParameter("t5");
	PreparedStatement ps=con.prepareStatement("insert into appartments values(?,?,?,?,?)");
	
	ps.setInt(1,a1);
	ps.setString(2,a2);
	ps.setString(3,a3);
	ps.setString(4,a4);
	ps.setString(5,a5);
	int n=ps.executeUpdate();
	if(n>0)
	{
		out.println("<script language='javascript'>window.alert('appartment inserted into database successfully');window.location='Appartments_Add.jsp';</script>");
	}
	else
	{
		out.println("<script language='javascript'>window.alert('incorrect');window.location='Appartments_Add.jsp';</script>");
	}
}
catch(Exception e)
{
	System.out.println("error:"+e);
}
%>
</body>
</html>