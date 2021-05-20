<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
request.setAttribute("Attr1", "reqVal1");
pageContext.setAttribute("Attr1", "pageVar1");
session.setAttribute("Attr1", "sesVal1");
application.setAttribute("Attr1", "appVal1");
%>
<!DOCTYPE html>
<html>
<head>

<%@ include  file = "/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class= "container">
${Attr1 }

</div>
</body>
</html>