<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page session = "true" %>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat"%>
<%
Date time = new Date();
SimpleDateFormat formatter = 
new SimpleDateFormat("yyyy-MM-DD HH:mm:ss");
%>
<!DOCTYPE html>
<html>
<head>

<%@ include  file = "/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class= "container">
세션 ID : <%= session.getId() %>
<%
time.setTime(session.getCreationTime());+
%>
세션생성시간 : <%=formatter.format(time) %><br>
<%
time.setTime(session.getLastAccessedTime());
%>
최근접근시간:<%= formatter.format(time) %>

</div>
</body>
</html>