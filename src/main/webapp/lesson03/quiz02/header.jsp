<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header class="d-flex align-items-center">
	<!-- 로고 -->
	<div class="mr-4">
		<h2 class="text-success">Melong</h2>
	</div>
	
	<!-- 검색 -->
	<form method="get" action="template.jsp">
		<div class="input-group">
			<input type="text" class="form-control col-12 ml-5" name="music" cols=20>
			<div class="input-group-append">
				<button type="submit" class="btn btn-info">검색</button>
			</div>
		</div>
	</form>
</header>