<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="javax.jdo.PersistenceManager,package1.PMF,package1.Dbstore,java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Retrieve user Details</title>
</head>
<body>


<p><%
PersistenceManager pm = PMF.get().getPersistenceManager();
javax.jdo.Query query = pm.newQuery(Dbstore.class);
	@SuppressWarnings("unchecked")
List<Dbstore> results = (List<Dbstore>) query.execute();
  for (Dbstore e : results) {
	  		response.getWriter().println(e.getfirstName());
	  		response.getWriter().println(e.getemail());
	
  }
 %></p>

</body>
</html>