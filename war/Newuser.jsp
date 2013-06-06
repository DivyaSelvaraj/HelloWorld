<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ page import="com.google.appengine.api.blobstore.BlobstoreServiceFactory" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService" %>

<%
    BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
%>   
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">

function validateForm()
{
	var x=document.forms["myForm"]["email"].value;
	var pas=document.forms["myForm"]["password"].value;
	var cpas=document.forms["myForm"]["password1"].value;
	var atpos=x.indexOf("@");
	var dotpos=x.lastIndexOf(".");
	var ac=document.forms["myForm"]["firstName"].value;
	var ac1=document.forms["myForm"]["lastName"].value;
	

	if (ac === "" || ac === null ||  ac1 === "" || ac1 === null)
	{
			alert("firstName or lastName is empty");
			return false;
	}
 	if( pas !== cpas) {
  		 
  		alert("Error: Password doesn't match");
  		document.forms["myForm"]["password1"].focus();
  		return false;
	}

	if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
	{
			alert("Not a valid e-mail address");
			return false;
	}


}

</script>
</head>
<body bgcolor ="#f2f2f2">

<form name="myForm" onsubmit="return validateForm()"   method="post" action="<%= blobstoreService.createUploadUrl("/jdoproject") %>" enctype="multipart/form-data"><br><br><br>
                <center><br><h4 style="height: 31px; width: 537px">REGISTER TO CREATE YOUR ACCOUNT</h4><p align="justify">
                        </p><table>
                    <tr><td> FirstName    </td><td> <input name="firstName"  type="text" /> </td></tr>
                    <tr><td> LastName     </td><td> <input name="lastName"  type="text" /> </td></tr>
                    <tr><td> Profile Image</td><td> <input name="myFile"  type="file" /> </td></tr>
                    <tr><td> Email - ID   </td><td> <input name="email"  type="text" value="  "/> </td></tr>
                    <tr><td> Password     </td><td> <input name="password" type="password" /></td></tr>
                    <tr><td> ConfirmPassword   </td><td> <input name="password1" type="password" /></td></tr>
                </table><input type="submit" value="Submit" />
                </center>
            </form>
</body>
</html>