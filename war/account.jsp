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
<title>Welcome</title>
</head>
<%-- <body bgcolor="lavender" ><form method="post"  action="<%= blobstoreService.createUploadUrl("/Jdoproject")%>"   enctype="multipart/form-data">
<center><h3>welcome to your account!!!</h3>
<table><tr><td>Your profile:</td></tr><br>
<tr><td><tr><td> Upload Profile Image</td><td> <input name="myFile"  type="file" /></td></tr></table>
 <a href="welcome.jsp">Log out</a>
</center></form>
</body>
</html> --%>
<body>
    <form action="/jdoproject" method="post" enctype="multipart/form-data">
        <center> Hi <%= request.getAttribute("UserName") %> welcome to ur account!<br><br>
        <img src ="<%= request.getAttribute("imageUrl") %>">
          <h4>Yahoo.! the image is retreived successfully...!</h4>
        	<h7>Thank u for using , </h7><h5><a href = "welcome.jsp">Log out Here</a></h5>
       </center>
    </form>
</body>
</html>