<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>new registration</title>
<link rel="stylesheet" href="css/styles.css" type="text/css" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
<script type="text/javascript">
function myFunction() {
    var pass1 = document.getElementById("p").value;
    var pass2 = document.getElementById("q").value;
    var ok = true;
    if (pass1 != pass2) {
        alert("Passwords Do not match");
        document.getElementById("pass1").style.borderColor = "#E34234";
        document.getElementById("pass2").style.borderColor = "#E34234";
        ok = false;
    }
    return ok;
}
</script>
</head>
<body style="bgcolor:orange">
<center><h1 style="bgcolor:red">REGISTRATION</h1>
<form name="f1" action="./registrationtable.jsp" method="get" >

<table width="40%" height="50px" cellspacing='10px'  align='center'bgcolor='F5F5F5' >
 <tr>
 
 <td style="font-size:22px">Appartment Id:</td>
 <td><input type="text" name="t1" required="required" placeholder="Appartment Id" size="20"></td>
 </tr>
 <tr>
 <td style="font-size:22px">Flat No:</td>
<td> <input type="text" name="t2"  placeholder="Flat No" size="20" required="reqired">
 
 </tr>
 <tr>
 <td style="font-size:22px">Owner Name</td>
 <td><input type="text" name="t3" required="required" placeholder="Owner Name" size="20"></td>
 
 </tr>
 <tr>
 <td style="font-size:22px">Designation</td>
 <td><input type="text" name="t4" required="required" placeholder="Designation" size="20"></td>
 
 </tr>
 
 <tr>
 <td style="font-size:22px">Phone No*:</td>
 <td><input type="text" name="t5" required="required" placeholder="Mobile Number" pattern="[0-9]{10}" size="20"></td>
 
 </tr>
 
 <tr>
 <td style="font-size:22px"> Password</td>
 <td><input type="Password" name="t6" required="required" placeholder="Password"  id="p" size="20"></td>
 
 </tr>
 <tr>
 <td style="font-size:22px"> Confirm Password</td>
 <td><input type="Password" name="t7" required="required" placeholder="Confirm Password" id="q" size="20"></td>
 
 </tr>
 
 <tr>
 
 <td colspan='2' align='center'><input type="submit" value="Register"  class="button"   name="submit"    onclick="return myFunction()" ></td>

 </tr>
 <tr></tr>
 <tr></tr>
 <tr></tr>
 <tr></tr>
 <tr></tr>
 </table>
  <br>
</form>
</center>
</body>
</html>