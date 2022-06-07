<%@ page import="com.AcademyPojo.*" %>
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

<%SubjectDAO dao=new  SubjectDAO();
List<SubjectPojo> emp=(List<SubjectPojo>)dao.display();
%>
<tr><th>Id</th><th>Subject</th><th>Action</th></tr>
<%for(SubjectPojo e:emp){ %>
<tr><td><%=e.getSubid() %></td><td><%=e.getSubname() %></td><td><a href="editsub.jsp">Edit</a></td><td><a href="deletesub.jsp">Delete</a></td></tr>
<%} %>

</table> <br><br><br>
<a href="Subject.jsp">Back to Subject</a>
</center>

</body>
</html>



</body>
</html>