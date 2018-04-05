<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AppartmentProblems</title>


<%@ include file="Loginhomemenu.jsp"%>
	

</head>

<body >
<center>
<h1 style="margin:0;color:orange;margin-left:30px; align:center;font-weight: bold;font-size:30pt;font-family: times new roman;" >Add Problem <br>
</h1></center><form name="f1" method="Get" action="problems_add.jsp">
 <table width="40%" height="50px" cellspacing='10px'  align='center'bgcolor='F5F5F5' >
 <tr>
 
 <td style="font-size:24px">Problem Id*:</td>
 <td><input type="text" name="t1" required="required" placeholder="Problem Id" size="20"></td>
 </tr>
 <tr>
 <td style="font-size:22px">Appartment Id*:</td>
<td> <input type="text" name="t2"  placeholder="Appartment Id" size="20" required="reqired">
 
 </tr>
 
 <tr>
 <td style="font-size:22px">Flat No*:</td>
<td> <input type="text" name="t3"  placeholder="Flat No" size="20" required="reqired">
 
 </tr>
 
 
 
 
 <tr>
 <td style="font-size:22px">Problem Date:</td>
 <td><input type="text" name="t4" required="required" placeholder="Problem Date" size="20"></td>
 
 </tr>
 
 
 <tr>
 <td style="font-size:22px">Problem:</td>
 <td><input type="text" name="t5" required="required" placeholder="Problem" size="20"></td>
 
 </tr>
 
 
 <tr>
 <td style="font-size:22px"> Amount:</td>
 <td><input type="text" name="t6" required="required" placeholder="Amount" pattern="[0-2]{2-5}" size="20"></td>
 
 </tr>
 <tr>
 <td style="font-size:22px"> Status:</td>
 <td><input type="text" name="t7" required="required" placeholder="Status"  size="20"></td>
 
 </tr>
 
 <tr>
 <td style="font-size:22px">Phone No*:</td>
 <td><input type="text" name="t8" required="required" placeholder="Mobile Number" pattern="[0-9]{10}" size="20"></td>
 
 </tr><tr>
 
 <td colspan='2' align='center'><input type="submit" value="Submit"  class="button"   name="abc"></td>

 
 
 </tr>
 <tr></tr>
 <tr></tr>
 <tr></tr>
 <tr></tr>
 <tr></tr>
 
 
 
 
 
 </table>
 
  <br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<footer>
<center><p style="background-color:silver" >copyrights @Nrpi</p></center>

</footer>

</form>

</body>
</html>