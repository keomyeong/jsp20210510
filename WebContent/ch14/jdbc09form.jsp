<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib tagdir = "/WEB-INF/tags/ch16/lecture" prefix = "my"%>
<%@ taglib tagdir = "/WEB-INF/tags/ch16/textbook" prefix = "tf"%>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include  file = "/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class= "container"> 
<%--jsp-web = ${pageContext.request.contextPath } 나는 현재 이거 와 같음--%>
	<form action="${pageContext.request.contextPath }/JDBC09Servlet" method="post">
	id : <input type = "text" name = "id">
	<br>
	<input type = "submit">
	</form>
</div>
</body>
</html>