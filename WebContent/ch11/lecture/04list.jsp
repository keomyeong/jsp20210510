<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
List<String> list = new ArrayList<>();
list.add("one");
list.add("two");
list.add("three");
list.add("fore");

pageContext.setAttribute("list1", list);
pageContext.setAttribute("i", "3");%>
<!DOCTYPE html>
<html>
<head>

<%@ include  file = "/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class= "container">
one : ${list1[0] }<br>
two : ${list1[1] }<br>
three : ${list1["2"] }<br>
${list1[i] }

</div>
</body>
</html>