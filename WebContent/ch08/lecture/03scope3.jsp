<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="ch08.*" %>
<jsp:useBean id="book1" class ="ch08.Book" scope = "page"></jsp:useBean>
<jsp:useBean id= "book2" scope="request" class = "ch08.Book"></jsp:useBean>
<jsp:useBean id="book3" class ="ch08.Book" scope = "session"></jsp:useBean>
<jsp:useBean id= "book4" scope="application" class = "ch08.Book"></jsp:useBean>


<!DOCTYPE html>
<html>
<head>

<%@ include  file = "/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class= "container">
<h3>scope3.jsp</h3>
 1. 제목: <jsp:getProperty property="title" name="book1"/><br>
 2. 제목: <jsp:getProperty property="title" name="book2"/><br>
 3. 제목: <jsp:getProperty property="title" name="book3"/><br>
 4. 제목: <jsp:getProperty property="title" name="book4"/><br>
 
</div>
</body>
</html>