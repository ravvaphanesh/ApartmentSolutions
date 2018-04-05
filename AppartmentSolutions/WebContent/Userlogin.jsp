<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Login Page</title>
<link rel="stylesheet" href="css/styles.css" type="text/css" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
</head>
<body>
<body style="bgcolor:orange">
<div style="background-color:orange">
<br>
<h1 style="margin:0;color:white;margin-left:30px; align:center;font-weight: bold;font-size:30pt;font-family: times new roman;">Appartment Solutions</h1>
<br>
<br>
<ul style="margin-left:40px;margin-right:40px">
  <li><a class="active" href="Home.html">Home</a></li>
  <li><a class="active" href="about.jsp">About</a></li>
  <li><a class="active" href="contact.jsp">Contact</a></li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn" onmouseover="myFunction()">Logins</a>
    <div class="dropdown-content" id="myDropdown">
      <a href="AdminLogin.jsp">ADMIN</a>
	  <a href="Userlogin.jsp">User</a>
    </div>
  </li>
</ul>
</div>
<br>
<br>

<center>
<table width="1000" cellpadding="30%">

<tr>
<td>
<form action="Userhome_redirect.jsp" method="get">

<center>

<table width="100%" height="20px" cellspacing='10px' bgcolor='LightGray'>
<tr><h2><th colspan='2' style="font-size:28px">USER</h2></th></tr>
<tr><td style="font-size:22px">Flatno:</td> <td><input type="text" name="flatno" placeholder="flatno" size="20" required></td> </tr>
<tr><td style="font-size:22px">Password:</td> <td><input type="password" name="password" placeholder="Password" size="20" required></td> </tr>
<tr><td colspan='2' align='center'><input type='submit' name='submit'  class="button" value='Login'></td> </tr>
<tr><td></td><td><a href="forgotpassword.jsp">Forgot Password</a></td></tr>
<tr><td></td><td><a href="registration.jsp">New Registration</a></td></tr>
</table>
</center>
</form>
</td>
<td>
<img src="css/aboutus.jpg"  height="300" width="500">
</td>
</tr>
</table>

</center>
</div>




</body>
</body>
</html>