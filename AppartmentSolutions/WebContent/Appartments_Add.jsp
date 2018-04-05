<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appartments</title>



	<%@ include file="Adminhomemenu.jsp" %>

</head>

<body >
<center>
<h1 style="margin:0;color:orange;margin-left:30px; align:center;font-weight: bold;font-size:30pt;font-family: times new roman;" >Add New Appartment <br>
</h1></center><form name="f1" method="Get" action="./Apartments_AddRedirect.jsp">
 <table width="40%" height="50px" cellspacing='10px'  align='center'bgcolor='F5F5F5' >
 <tr>
 
 <td style="font-size:22px">Appartment Id*:</td>
 <td><input type="text" name="t1" required="required" placeholder="Appartment Id" size="20"></td>
 </tr>
 <tr>
 <td style="font-size:22px">AppartmentName*:</td>
<td> <input type="text" name="t2"  placeholder="Appartment Name" size="20" required="reqired">
 
 </tr>
 
 
 
 
 
 
 <tr>
 <td style="font-size:22px">AppartmentAddress*:</td>
 <td><input type="text" name="t3" required="required" placeholder="Appartment address" size="20"></td>
 
 </tr>
 
 
 
 <tr>
 <td style="font-size:22px"> Appartment district*:</td>
 <td><input type="text" name="t4" required="required" placeholder="Appartment district" size="20"></td>
 
 </tr>
 
 
 <tr>
 <td style="font-size:22px">Phone No*:</td>
 <td><input type="text" name="t5" required="required" placeholder="Mobile Number" pattern="[0-9]{10}" size="20"></td>
 
 </tr><tr>
 
 <td colspan='2' align='center'><input type="submit" value="Submit"  class="button"   name="neel"></td>

 
 
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
<center><p style="background-color:silver" >copyrights @Nrv</p></center>

</footer>

</form>








</body>
</html>