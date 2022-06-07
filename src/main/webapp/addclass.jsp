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
<form action="addccode.jsp">

Id <input type="text" name="clid"><br>
Class Name <input type="text" name="clname"><br>
Teacher Name<input type="text" name="case"><br>
Subject Name<input type="text" name="case2"><br>
<input type="submit">

</form>
Kindly Input Values from Below List<br>
<table border="1" align="left" style="width:48%">

<%SubjectDAO dao=new  SubjectDAO();
List<SubjectPojo> emp=(List<SubjectPojo>)dao.display();
%>
<tr><th>Subjects</th></tr>
<%for(SubjectPojo e:emp){ %>
<tr><td><%=e.getSubname() %></td></tr>
<%} %>


</table>
<table border="1" align="left" style="width:48%">

<%TeacherDAO dao1=new  TeacherDAO();
List<Teacher> emp1=(List<Teacher>)dao1.display();
%>
<tr><th>Teachers</th></tr>
<%for(Teacher e:emp1){ %>
<tr><td><%=e.getTname() %></td></tr>
<%} %>

</table>
</center>

</body>
</html>