<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
try
{
	int count=0;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con;
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","myoracledb","myoracledb");
	int a1=Integer.parseInt(request.getParameter("t1"));
	Statement st;
	st=con.createStatement();
	String qry="select * from appartments where appid="+a1;
	ResultSet rs=st.executeQuery(qry);
	while(rs.next())
	{
		count++;
	}
	if(count>0){
	int a2=Integer.parseInt(request.getParameter("t2"));
	String a3=request.getParameter("t3");
	String a4=request.getParameter("t4");
	String a5=request.getParameter("t5");
	String a6=request.getParameter("t6");
	PreparedStatement ps=con.prepareStatement("insert into flats values(?,?,?,?,?,?)");
	
	ps.setInt(1,a1);
	ps.setInt(2,a2);
	ps.setString(3,a3);
	ps.setString(4,a4);
	ps.setString(5,a5);
	ps.setString(6,a6);
	int n=ps.executeUpdate();
	if(n>0)
	{
		out.println("<script language='javascript'>window.alert('Successfully Registered');window.location='Userlogin.jsp';</script>");
	}
	else
	{
		out.println("<script language='javascript'>window.alert('Try Again!');window.location='registration.jsp';</script>");
	}
	}
	else
	{
		out.println("<script language='javascript'>window.alert('Entered Appartment id doesnt exist!');window.location='registration.jsp';</script>");
	}
}
catch(Exception e)
{
	System.out.println("error:"+e);
}
%>
</body>
</html>