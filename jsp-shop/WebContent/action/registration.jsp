<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
int product_id = Integer.parseInt(request.getParameter("product_id"));
int amount = Integer.parseInt(request.getParameter("amount"));
String date = request.getParameter("puchase_date");

try {
	Class.forName("oracle.jdbc.OracleDriver");
	Connection conn = DriverManager.getConnection
						("jdbc:oracle:thin:@//122.128.169.32:1521/xe", "sdh_23", "1234");
	
	
	Statement stmt = conn.createStatement();
	String query = "SELECT PRICE FROM PRODUCT WHERE PRODUCT_ID = "+ product_id;		
	ResultSet rs = stmt.executeQuery(query);
	rs.next();
	int price = rs.getInt(1);
	rs.close();
	
	String insert_query = "INSERT INTO SALE(SALE_ID, PRODUCT_ID, PURCHASE_DATE, SALE_PRICE, AMOUNT) " +
						  "VALUES(SALES_SEQ.NEXTVAL, %d, '%s', %d, %d)";
	
	stmt.executeQuery(String.format(insert_query, product_id, date, price * amount, amount));
	
	conn.commit();
	
	stmt.close();
	conn.close();
}
catch (Exception e) {
	e.printStackTrace();
}

response.sendRedirect("../index.jsp?section=Sales_History");
%>