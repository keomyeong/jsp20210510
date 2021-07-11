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
	제목
	<br>
	<input value="${board.title }" readonly />
	<br>
	본문
	<br>
	<textarea readonly><c:out value="${board.body }" /></textarea>
</div>
</body>
</html>