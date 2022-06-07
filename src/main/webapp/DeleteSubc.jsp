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
<%
int subid =Integer.parseInt(request.getParameter("Subid"));
SubjectPojo sb = new SubjectPojo();
sb.setSubid(subid);
SubjectDAO dao=new SubjectDAO();
int row=dao.DeleteSub(sb);
if(row>0){
	response.sendRedirect("success.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}
%>
</body>
</html>