<%@page import="com.AcademyPojo.*"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<table border="1">

<%ClassesDAO dao=new  ClassesDAO();
List<Classes> emp=(List<Classes>)dao.display();
%>
<tr><th>Id</th><th>Classes</th><th>Teachers</th><th>Subjects</th><th>Action</th></tr>
<%for(Classes e:emp){ %>
<tr><td><%=e.getClid() %></td><td><%=e.getClname() %></td><td><%=e.getClteacher() %></td><td><%=e.getClsub() %></td><td><a href="editclass.jsp">Edit</a></td><td><a href="deleteclass.jsp">Delete</a></td></tr>
<%} %>

</table> <br><br><br>
<a href="Class.jsp">Back to Classes</a>
</center>
</body>
</html>