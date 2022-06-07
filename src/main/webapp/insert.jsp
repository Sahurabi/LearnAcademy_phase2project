<%@page import="com.AcademyPojo.ClassesDAO"%>
<%@page import="com.AcademyPojo.Classes"%>
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
String id=request.getParameter("username");
String name=request.getParameter("password");
if(id.equals("Admin")&& name.equals("Admin")){
	
	response.sendRedirect("Home.jsp");
}else
	response.sendRedirect("Error.jsp");

%>
</body>
</html>