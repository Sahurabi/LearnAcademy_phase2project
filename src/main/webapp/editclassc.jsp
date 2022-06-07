<%@page import="com.AcademyPojo.*"%>
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
String clname=request.getParameter("clname");
String clteacher=request.getParameter("case");
String clsub=request.getParameter("case2");
int clid=Integer.parseInt(request.getParameter("clid"));
Classes sb=new Classes();
sb.setClname(clname);
sb.setClteacher(clteacher);
sb.setClsub(clsub);
sb.setClid(clid);
ClassesDAO dao=new ClassesDAO();
int row=dao.updateCls(sb);
if(row>0){
	response.sendRedirect("listclass.jsp");
}
else{
	response.sendRedirect("Home.jsp");
}
%>
</body>
</html>