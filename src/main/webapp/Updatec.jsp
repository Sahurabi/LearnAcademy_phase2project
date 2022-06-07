<%@ page import="com.AcademyPojo.*" %>
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
int subid=Integer.parseInt(request.getParameter("Subid"));
String subname=request.getParameter("Subname");
SubjectPojo sb=new SubjectPojo();
sb.setSubid(subid);
sb.setSubname(subname);
SubjectDAO dao= new SubjectDAO();
int row=dao.updateSub(sb);
if (row>0){
	response.sendRedirect("Home.jsp");
	
}else
{
	response.sendRedirect("fail.jsp");
}





%>



</body>
</html>