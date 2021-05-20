<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include  file = "/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class= "container">
<ul>
<c:choose>
<c:when test="${param.name == 'bk' }">
<il> 당신의 이름은 ${param.name } 입니다.
</c:when>
<c:when test="${param.age>20 }">
<il> 당신은 20세 이상입니다.
</c:when>
<c:otherwise>
<il> 당신은 bk도 아니고 20세이상도 아닙니다.
</c:otherwise>
</c:choose>


</ul>
</div>
</body>
</html>