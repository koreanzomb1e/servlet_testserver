<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이번달 달력</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1 class="text-center">2021-07</h1>
		
		<table class="table text-center">
			<thead>
				<tr>
					<th class="text-danger">일</th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
					<th>토</th>
				</tr>
			</thead>
			<tbody class="display-4">
				<tr>
				
				<%
					// 월의 첫요일 구하기
					// 월의 말일 구하기
					
					Calendar date = Calendar.getInstance();
					date.set(Calendar.DATE, 1);
				
					int dayOfWeek = date.get(Calendar.DAY_OF_WEEK);
					int lastDay = date.getActualMaximum(Calendar.DAY_OF_MONTH);
					
					for (int i = 1; i < dayOfWeek; i++) {
						out.print("<td></td>");
					}
				
					for (int i = 1; i <= lastDay; i++) {
						out.print("<td>" + i + "</td>");
						
						if ((dayOfWeek + i - 1) % 7 == 0) {
							out.print("</tr>");
							out.print("<tr>");
						}
					}
				%>
				
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>