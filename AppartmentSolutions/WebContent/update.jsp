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
	String appphoneno=request.getParameter("appphoneno");
	String appid=request.getParameter("appid");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con;
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","myoracledb","myoracledb");
	Statement st;
	st=con.createStatement();
	String qry="update appartments set appphoneno='"+appphoneno+"' where appid='"+appid+"'";
	int n=st.executeUpdate(qry);
	if(n==0)
	{
		out.println("<h1>Enter existing appartment id");
	}
	else
	{
	out.println("<script language='javascript'>window.alert('record updated in database');window.location='Appartments_View.jsp';</script>");
	}	
	out.println("</table>");
}
catch(Exception e)
{
	System.out.println("error:"+e);
}
%>
</body>
</html>