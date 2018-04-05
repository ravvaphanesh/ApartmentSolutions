<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style>
</style>
<title>User home</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="css/styles2.css" type="text/css" />
<link rel="stylesheet" href="css/style2.css" type="text/css" />
</head>
<body>
<h1 style="margin:0;color:white; align:center;font-weight: bold;font-size:30pt;font-family: times new roman;">AppartmentSolutions</h1>

<ul style="margin-left:0;margin-right:0" align="center">
  <li align="center"><a class="active" href="Home.html">Home</a></li>
  <li class="dropdown">Problems
  <div class="dropdown-content" id="myDropdown">
      <a href="AppartmentProblems_add.jsp">Add</a>
	  <a href='AppartmentProblems_view.jsp'>View</a></div>
  </li>
  <li class="dropdown">Feedback
  <div class="dropdown-content" id="myDropdown">
      <a href="feedback_add.jsp">Add</a>
	  <a href="feedback_view.jsp">View</a></div>
  </li>
   <li><a class="active" href="Userlogout.jsp" align="left">Logout</a></li>
</ul>

<br>
<br>
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
	</br></br>



<%@ page import="java.sql.*" %>
<%

try
{
	String flatno=request.getParameter("flatno");
	String b=request.getParameter("password");
	Statement st;
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con;
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","myoracledb","myoracledb");
	PreparedStatement pstmt= con.prepareStatement("Select * from flats where flatno=? and password=?");    
    pstmt.setString(1,flatno);
    pstmt.setString(2,b);
    ResultSet rss = pstmt.executeQuery();		
	if(rss.next())
	{
		String user=rss.getString("ownername");
		
	}
	out.println("<h1 style='color:white;align:center;font-weight:bold;font-size:20pt;font-family: times new roman;'>hey"+rss.getString("ownername")+"</h1>");
	HttpSession sn=request.getSession();
	sn.setAttribute("flatno",flatno);
	
	sn.setAttribute("appid",(rss.getString("appid")));
	rss.close();
	pstmt.close();
}
catch(Exception e)
{
	System.out.println("error:"+e);
}
%>





</body>
</html>