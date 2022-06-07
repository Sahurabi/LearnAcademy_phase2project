<%@page import="com.AcademyPojo.TeacherDAO"%>
<%@page import="com.AcademyPojo.Teacher"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int Tid=Integer.parseInt(request.getParameter("Tid"));
Teacher tea= new Teacher();
tea.setTid(Tid);
TeacherDAO dao=new TeacherDAO();
int row=dao.deleteTch(tea);
if(row>0){
	response.sendRedirect("success.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}
%>

</body>
</html>