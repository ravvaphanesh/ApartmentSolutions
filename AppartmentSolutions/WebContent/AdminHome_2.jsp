<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/styles2.css" type="text/css" />
<link rel="stylesheet" href="css/style2.css" type="text/css" />
<script type="text/javascript">
window.history.forward();
function noBack()
{
	window.history.forward();
}

</script>

</head>
<body style="margin-left:20px" >
<h1 style="margin:0;color:white; align:center;font-weight: bold;font-size:30pt;font-family: times new roman;">AppartmentSolutions</h1>

<ul style="margin-left:0;margin-right:0" align="center">
  <li align="center"><a class="active" href="Adminhome.jsp">Home</a></li>
 <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn" onmouseover="myFunction()" style="color:white">Apartments</a>
    <div class="dropdown-content" id="myDropdown">
      <a href="Appartments_Add.jsp">Add</a>
	  <a href="Appartments_View.jsp">View</a>
    </div>
  </li>
   <li><a class="active" href="AppartmentFlats.jsp">Flats</a></li>
  <li><a class="active" href="problems.jsp">problems</a></li>
  <li><a class="active" href="feedback.jsp">Feedback</a></li>  
   <li><a class="active" href="adminlogout.jsp" align="left">Logout</a></li>
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
	</h1>
	</br></br>
<h1 style="margin:0;color:white; align:center;font-weight: bold;font-size:20pt;font-family: times new roman;">PHANESH.
</caption>
</div>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

<footer><center>
<h2 style="margin:0;color:white; align:center;font-weight: bold;font-size:15pt;font-family: times new roman;background-color:black">copyrights @npv</h2></footer>
</center>
<%

HttpSession s=request.getSession();
String username=(String)s.getAttribute("username");

if(username!=null)
{
	
}
else
{
	response.sendRedirect("AdminLogin.jsp");
}



%>
</body>
</html>