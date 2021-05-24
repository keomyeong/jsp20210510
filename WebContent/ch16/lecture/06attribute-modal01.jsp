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
	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal1">
	  Launch demo modal
	</button>
	
	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal2">
	  Launch demo modal
	</button>
	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal3">
	  Launch demo modal
	</button>
</div>

<my:modal01 id = "exampleModal1"/>
<my:modal01 id = "exampleModal2"/>
<my:modal01 id = "exampleModal3"/>


</body>
</html>