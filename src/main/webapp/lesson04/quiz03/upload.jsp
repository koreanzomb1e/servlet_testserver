<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connection();
	
	String query = "select * from seller";
	ResultSet result = mysqlService.select(query);
%>
<h1>물건 올리기</h1>

<form method="get" action="/lesson04/quiz03_upload">
	<div class="d-flex w-100">
		<select class="form-control col-3 mr-5" name="sellerId">
		<%
			while (result.next()) {
		%>
			<option value="<%=result.getString("id")%>"><%=result.getString("nickname")%></option>
		<%
			}
		%>
		</select> <input type="text" class="form-control col-5 mr-5" placeholder="제목"
			name="title">

		<div class="input-group">
			<input type="text" class="form-control col-7" placeholder="가격"
				name="price">
			<div class="input-group-prepend">
				<span class="input-group-text">원</span>
			</div>
		</div>
	</div>
	<textarea class="form-control mt-3" rows="6" name="description"></textarea>

	<div class="input-group mt-3 w-100">
		<div class="input-group-prepend">
			<span class="input-group-text">이미지 url</span>
		</div>
		<input type="text" class="form-control" name="image">
	</div>

	<button type="submit" class="btn w-100 mt-3">저장</button>
</form>