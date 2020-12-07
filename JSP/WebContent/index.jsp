<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>test</title>
<%
String section = request.getParameter("section") != null ? request.getParameter("section") : "";
%>
</head>
<body>
<%
		switch(section) {
		case "A":
			%><%@include file = "pages/A.jsp" %><%
			break;
		case "B":
			%><%@include file = "pages/B.jsp" %><%
			break;
		case "C":
			%><%@include file = "pages/C.jsp" %><%
			break;
		default :
			out.println("메인 페이지임");
	}
%>
	<ul>
		<li><a href ="index.jsp?section=A">A</a></li>
		<li><a href ="index.jsp?section=B">B</a></li>
		<li><a href ="index.jsp?section=C">C</a></li>
	</ul>
</body>
</html>