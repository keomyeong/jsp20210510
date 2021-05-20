<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import="ch08.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="book1" class ="ch08.Book" scope = "page"></jsp:useBean>
<jsp:setProperty name = "book1" property ="title" value = "스프링"/>
<jsp:useBean id= "book2" scope="request" class = "ch08.Book"></jsp:useBean>
<jsp:setProperty name = "book2" property ="title" value = "web"/>

<jsp:useBean id= "book3" scope="session" class = "ch08.Book"></jsp:useBean>
<jsp:setProperty name = "book3" property ="title" value = "jsp"/>

<jsp:useBean id= "book4" scope="application" class = "ch08.Book"></jsp:useBean>
<jsp:setProperty name = "book4" property ="title" value = "java"/>



<!DOCTYPE html>
<html>
<head>

<%@ include  file = "/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class= "container">
 1. 제목: <jsp:getProperty property="title" name="book1"/><br>
 2. 제목: <jsp:getProperty property="title" name="book2"/><br>
 3. 제목: <jsp:getProperty property="title" name="book3"/><br>
 4. 제목: <jsp:getProperty property="title" name="book4"/><br>
 
 
</div>

<jsp:include page="03scope2.jsp"></jsp:include>

</body>
</html>