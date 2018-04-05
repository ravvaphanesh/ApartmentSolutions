<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<center>
<%

Connection con;
Statement st;
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con=DriverManager.getConnection
			("jdbc:oracle:thin:@localhost:1521:xe","myoracledb","myoracledb");
	
	st=con.createStatement();
	
	String appid=request.getParameter("appid");
	
	String qry="delete from appartments where appid="+appid;

	int n=st.executeUpdate(qry);
	if(n==0)
	{
		out.println("<h1>appartment with entered id not found");
	}
	else
	{
	out.println("<script language='javascript'>window.alert('record deleted from database');window.location='Appartments_View.jsp';</script>");
	}			
}
catch(Exception e)
{
	out.println("<h1>Eeror :"+e);
}

%>
</body>
</html>