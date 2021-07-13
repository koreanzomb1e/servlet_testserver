<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
		int number = Integer.parseInt(request.getParameter("number"));
		String[] unitArr = request.getParameterValues("unit");
	%>
	
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h3><%= number %>cm</h3>
		<hr>
		
		<%
			for (String unit : unitArr) {
				if (unit.equals("inch")) {
					double inch = number * 0.393701;
					out.print("<h3>" + inch + "in</h3>");
				} else if (unit.equals("yard")) {
					double yard = number * 0.0109361;
					out.print("<h3>" + yard + "yd</h3>");
				} else if (unit.equals("feet")) {
					double feet = number * 0.0328084;
					out.print("<h3>" + feet + "ft</h3>");
				} else if (unit.equals("meter")) {
					double meter = number * 0.01;
					out.print("<h3>" + meter + "m</h3>");
				}
			}
		%>
	</div>
</body>
</html>