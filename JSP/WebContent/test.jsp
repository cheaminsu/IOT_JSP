<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
int[] array = {1, 2, 3, 11, 12, 13, 21, 22, 23, 31, 32, 33, 41, 42, 43};
%>
<table border = 1>
<tr>
<%
	for (int i = 1; i <= array.length; i++){
		%>
			<td><%= array[i-1]%></td>
			
		<%
		if (i % 3 == 0){
			%></tr><tr><%
		}
	}
%>
</tr>
</table>
</body>
</html>