<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import="ch08.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="book1" class ="ch08.Book" scope = "page"></jsp:useBean>
<jsp:useBean id= "book2" scope="request" class = "ch08.Book"></jsp:useBean>



<div class = "cotainer mt-5">
<h3>scope2.jsp</h3>
 1. 제목: <jsp:getProperty property="title" name="book1"/><br>
 2. 제목: <jsp:getProperty property="title" name="book2"/><br>
</div>