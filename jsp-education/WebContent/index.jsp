<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>최민수</h3>
	<%
	//피보나치 배열을 구해서 출력해주세요
		int a = 1; 
		int b = 1; 
		int c; 
		for (c = a + b; c <= 144; ) { 
  			if (c == 2) out.print(a + "<br>" + b + "<br>" + c + "<br>"); 
  			else out.print(" " + c + "<br>"); 
  			a = b; 
  			b = c; 
  			c = a + b; 
		}  
		out.print("<br>"); 
	%>
	<table border = "1">
		<tr>
			<%
				for (int i = 1; i <= 12; i++){
					%>
						<td><%= i %></td>
					<%
					if (i % 3 == 0){
						%><tr></tr><%
					}
				}
			%>
		</tr>
	</table>
</body>
</html>