<%@page import="com.AcademyPojo.TeacherDAO"%>
<%@page import="com.AcademyPojo.Teacher"%>
<%@page import="java.util.*"%>
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
String Tname=request.getParameter("Tname");
Teacher tea=new Teacher();
tea.setTid(Tid);
tea.setTname(Tname);
TeacherDAO dao=new TeacherDAO();
int row=dao.insertTea(tea);
if(row>0){
	response.sendRedirect("success.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}
%>


</body>
</html>