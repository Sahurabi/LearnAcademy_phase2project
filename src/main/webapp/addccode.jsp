<%@page import="com.AcademyPojo.*"%>
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
int clid=Integer.parseInt(request.getParameter("clid"));
String clname=request.getParameter("clname");
String clteacher =request.getParameter("case");
String clsub =request.getParameter("case2");
Classes sb=new Classes();
sb.setClid(clid);
sb.setClname(clname);
sb.setClteacher(clteacher);
sb.setClsub(clsub);
ClassesDAO dao=new ClassesDAO();
int row=dao.insertCls(sb);
if(row>0){
	response.sendRedirect("success.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}
%>
</body>
</html>