<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function validateForm1()
{
	var x=document.forms["myForm"]["email"].value;
	var atpos=x.indexOf("@");
	var dotpos=x.lastIndexOf(".");
	var pas=document.forms["myForm"]["password"].value;
	if(x==" " || x==null)
		{
		alert("E-mail id is empty");
		return false;
		}
	if (atpos<2 || dotpos<atpos+1 || dotpos+1>=x.length)
	{
			alert("Not a valid e-mail address,Note: Example@exm.com");
			return false;
	}
	if(pas=="" || pas==null)
		{
		alert("Error: Plz enter the correct Password!");
		return false;
		}
		}

</script></head>
<body bgcolor="#e0ffff">

<form name="myForm" onsubmit="return validateForm1()" method="get" action="/welcome">

 <br><br><br><center>Welcome to our site</center>
<center><table><th>Login Here</th><br><br>
 <tr><td> E-Mail    : </td><td> <input name="email" type="text" value="  "/> </td></tr>
 <tr><td> Password  : </td><td> <input name="password" type="password" /> </td></tr>
 <tr></tr></table>
 <input name="login" type="submit" value="submit" /><br><br><br>
 <table align="center"><th> Register Here</th>
 <tr><td><a href="/Newuser.jsp"><input type="button" value="Register" ></a></td></tr></table> <br>
 <table><th>To check</th><br><tr><td><a href="/retrieve.jsp" ><input type="button" value="Retrieve" ></a></td></tr></table>
  </center></table> 
  </form>                            
</body>
</html>