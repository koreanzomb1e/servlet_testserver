<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 추가</title>
</head>
<body>
	<%--
		Flow
		
		유저 추가) ex02.jsp (input 폼 화면) -> ex02_insert (서블릿, insert query)
		-> ex02_1.jsp (유저 목록, select query)
		
	 --%>
	<form method="post" action="/lesson04/ex02_insert">
		<p>
			<b>이름</b>
			<input type="text" name="name">
		</p>
		
		<p>
			<b>생년월일</b>
			<input type="text" name="birth">
		</p>
		
		<p>
			<b>이메일</b>
			<input type="text" name="email">
		</p>
	
		<p>
			<b>자기소개</b>
			<textarea type="text" name="introduce" rows=3 cols=50></textarea>
		</p>
		
		<p>
			<input type="submit" value="추가">
		</p>
	</form>
</body>
</html>