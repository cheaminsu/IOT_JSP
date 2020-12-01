<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
String section = request.getParameter("section") != null ? request.getParameter("section") : "";
%>
</head>
<body>
	<%@include file ="static/header.jsp" %>
	<%@include file ="static/nav.jsp" %>
	
	<%
		switch(section) {
		case "insert":
			%><%@include file = "page/insert.jsp" %><%
			break;
		case "select":
			%><%@include file = "page/select.jsp"%><%
			break;
		default :
			%><%@include file = "static/index.jsp"%><%
		}
	%>
	
	<%@include file ="static/footer.jsp" %>
</body>
</html>