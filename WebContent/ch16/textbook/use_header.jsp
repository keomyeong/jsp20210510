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
<tf:header title = "텍스트 제목" level = "2"/>
<tf:header title = "${'EL 제목' }" level = "3"/>
<tf:header title = '<%= "표현식 제목" %>' />

</div>
</body>
</html>