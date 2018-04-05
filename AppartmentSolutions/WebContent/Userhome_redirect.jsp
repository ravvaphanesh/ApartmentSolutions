<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User home</title>

</head>
<body>
<%@ page import="java.sql.*" %>
<%

	try
	{
		 Class.forName("oracle.jdbc.driver.OracleDriver"); 
			
		    String url ="jdbc:oracle:thin:@localhost:1521:xe";
		    System.out.println("connection Established");
		    Connection con = DriverManager.getConnection(url, "myoracledb","myoracledb");
		    String flatno,pwd;
		    flatno= request.getParameter("flatno");
		    pwd=   request.getParameter("password");
		    
		    PreparedStatement pstmt= con.prepareStatement("Select flatno,password from flats where flatno=? and password=?");
		    
		    pstmt.setString(1, flatno);
	        pstmt.setString(2, pwd);
			
	        ResultSet rss = pstmt.executeQuery();
			
			
			if(rss.next())
			{
				
				//RequestDispatcher rd=request.getRequestDispatcher("Userhome.jsp");
				//rd.forward(request,response);
				%>
				<%@ include file="Loginhomemenu.jsp"%>

				<%

try
{
	
	pstmt= con.prepareStatement("Select * from flats where flatno=? and password=?");    
    pstmt.setString(1,flatno);
    pstmt.setString(2,pwd);
    rss = pstmt.executeQuery();		
	if(rss.next())
	{
		String user=rss.getString("ownername");
		
	}
	%>
	<div class="caption">
	<caption>
	<h1 style="margin:0;color:white; align:center;font-weight: bold;font-size:30pt;font-family: times new roman;">
	<script language='javascript'>

		var d=new Date();
		var a;
		a=d.getHours();
		
		if(a<12)
			{
				document.write("GOOD MORNING");
			}
		else if(a>12 && a<17)
			{
			document.write("Good Afternoon");
			}
		else
			{
			document.write("Good Evening");
			}
		</script>
		</h1></caption></div>
		<br><br>
		<%
	out.println("<h1 style='color:white;font-weight:bold;font-size:20pt;font-family: times new roman;'>hey"+rss.getString("ownername")+"</h1>");
	HttpSession sn=request.getSession();
	sn.setAttribute("flatno",flatno);
	
	sn.setAttribute("appid",(rss.getString("appid")));
	rss.close();
	pstmt.close();
	con.close();
}
catch(Exception e)
{
	System.out.println("error:"+e);
}
%>
				
				<%
			}
				
				
			
			else
			
				out.println("<script language='javascript'>window.alert('incorrect flatno or password');window.location='Userlogin.jsp';</script>");
			
			
	}
	 catch(Exception e) {
         out.println("RECORD NOT INSERTED"+e);
	 }
%>
</body>
</html>