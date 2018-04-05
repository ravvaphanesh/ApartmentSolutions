<html>
<head>
<script type="text/javascript">
window.history.forward();
function noBack()
{
	window.history.forward();
}

</script>
</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="" style="margin-right:20px" >

<%@ page import="java.sql.*" %>
        <%
        HttpSession s=request.getSession();
            s.invalidate();

        %>

        <h1><font color="Red">You are Sucessfully logged out...</font></h1>

        <a href="Home.html">Go-Back To Home Page</a>

    </body>

</html>

