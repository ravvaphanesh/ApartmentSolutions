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
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	PreparedStatement ps=con.prepareStatement("select uname,pwd from admin where uname=? and pwd=?");
	ps.setString(1,username);
	ps.setString(2,password);
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
		HttpSession s = request.getSession();
		s.setAttribute("username",username);
		response.sendRedirect("Adminhome.jsp");
	}
	else
	{
		out.println("<script language='javascript'>window.alert('incorrect username or password');window.location='AdminLogin.jsp';</script>");
	}
}
catch(Exception e)
{
	System.out.println("error:"+e);
}
%>
</body>
</html>