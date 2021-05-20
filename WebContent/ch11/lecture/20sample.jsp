<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include  file = "/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class= "container">
<form>
수1 : <input type = "text" name = "a"/><br>
수2 : <input type = "text" name = "b"/><br>
 <input type = "submit" value = "계산"/><br>

</form>
<hr>
${param.a}  - - -  ${param.b} <br>
더한결과 :${param.a + param.b } <br>
뺀결과 :${param.a - param.b } <br>
곱한결과 :${param.a * param.b } <br>
나눈결과 :${param.a / param.b } <br>

</div>
</body>
</html>