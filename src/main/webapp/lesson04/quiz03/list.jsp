<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connection();
	
	String query = "select * from seller join used_goods on seller.id = used_goods.sellerId";
	ResultSet result = mysqlService.select(query);
	
%>
<section>
	<section class="d-flex flex-wrap justify-content-between">
	<%
		while (result.next()) {
	%>

		<div class="border border-danger mb-3 p-3" style="width: 350px; height: 300px">
			<img alt="image" src="<%=result.getString("image")%>" width=300><br>
			<span><%=result.getString("title")%></span><br> <span><%=result.getString("price")%></span><br>
			<span><%=result.getString("nickname")%></span>
		</div>
		
	<%
		}
	%>
	</section>
</section>