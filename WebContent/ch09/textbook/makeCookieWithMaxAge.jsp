<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
Cookie cookie = new Cookie("oneh","1time");
cookie.setMaxAge(60*60);
response.addCookie(cookie);

%>
<!DOCTYPE html>
<html>
<head>

<%@ include  file = "/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class= "container">
유효시간 1시간짜리 ~~
</div>
</body>
</html>