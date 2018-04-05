<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin home</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

</head>
<body>
<%@ page import="java.sql.*" %>
<%
try
{
	HttpSession s=request.getSession();
	String username=(String)s.getAttribute("username");
	if(username!=null)
	{
		response.sendRedirect("AdminHome_2.jsp");
	}
	else
	{   
		out.println("Please login first");  
		response.sendRedirect("AdminLogin.jsp");
        out.close();  
	}
}
catch(Exception e)
{
	System.out.println("error:"+e);
}
%>
</body>
</html>