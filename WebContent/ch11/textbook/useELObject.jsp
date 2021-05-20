<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
request.setAttribute("name", "최범균");
%>
<!DOCTYPE html>
<html>
<head>

<%@ include  file = "/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class= "container">
${pageContext.request.requestURI }<br>
${requestScope.name }<br>
${param.code }<br>
</div>
</body>
</html>