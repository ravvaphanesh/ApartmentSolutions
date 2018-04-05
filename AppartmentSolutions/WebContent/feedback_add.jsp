<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feed</title>
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
	String a1=request.getParameter("t1");
	String a2=request.getParameter("t2");
	Statement st;
	st=con.createStatement();
	String qry="select * from appartments where appid="+a2;
	ResultSet rs=st.executeQuery(qry);
	while(rs.next())
	{
		count++;
	}
	if(count>0)
	{
	String a3=request.getParameter("t3");
	String a4=request.getParameter("t4");
	String a5=request.getParameter("t5");
	PreparedStatement ps=con.prepareStatement("insert into feedback values(?,?,?,?,?)");
	
	ps.setString(1,a1);
	ps.setString(2,a2);
	ps.setString(3,a3);
	ps.setString(4,a4);
	ps.setString(5,a5);
	int n=ps.executeUpdate();
	if(n>0)
	{
		out.println("<script language='javascript'>window.alert('feedback sent to admin successfully');window.location='Userhome.jsp';</script>");
	}
	else
	{
		out.println("<script language='javascript'>window.alert('try again!');window.location='AppartmentFeedback_add.jsp';</script>");
	}
	}
	else
	{
		out.println("<script language='javascript'>window.alert('incorrect appartment id!');window.location='AppartmentFeedback_add.jsp';</script>");
	}
	con.close();
}
catch(Exception e)
{
	System.out.println("error:"+e);
}
%>
</body>
</html>