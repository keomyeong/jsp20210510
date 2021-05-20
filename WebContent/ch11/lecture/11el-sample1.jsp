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
	<form action="11el-sample2.jsp" method = "post">
	이름 : <input name = "myname" type = "text"/> <br>
	나이 : <input name = "age" type = "number"/> <br>
	이메일 : <input name = "memberEmail" type = "email"/> <br>
	<input type = "submit" value = "전송"/><br>
	
	
	</form>
</div>
</body>
</html>