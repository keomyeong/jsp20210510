<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container" >
	<form >
	<input type = "checkbox" name = "fruit" value = "100"> 사과 <br>
	<input type = "checkbox" name = "fruit" value = "150"> 바나나 <br>
	<input type = "checkbox" name = "fruit" value = "200"> 딸기 <br>
	<input type = "checkbox" name = "fruit" value = "250"> 키위 <br>
	<input type = "checkbox" name = "fruit" value = "300"> 망고 <br>
	<input type = "checkbox" name = "fruit" value = "400"> 수박 <br>
	
	<input type = "submit" value = "합계">
	</form>
	<hr>
	<div class = "container">
	합계 :

				<%
				String [] fruits = request.getParameterValues("fruit");
				int sum = 0;
				if (fruits != null && fruits.length > 0) {
					for (int i = 0; i < fruits.length; i++) {
						sum += Integer.valueOf(fruits[i]);
					}
				}
				out.print(sum);
				%>
	</div>
</body>
</html>