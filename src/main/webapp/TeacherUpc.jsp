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
int tid=Integer.parseInt(request.getParameter("Tid"));
String tname=request.getParameter("Tname");
Teacher tea=new Teacher();
tea.setTid(tid);
tea.setTname(tname);
TeacherDAO dao= new TeacherDAO();
int row=dao.updateTea(tea);
if (row>0){
	response.sendRedirect("listtea.jsp");
	
}else
{
	response.sendRedirect("Home.jsp");
}





%>



</body>
</html>