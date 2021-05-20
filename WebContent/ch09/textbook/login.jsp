<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%@ page import="util.Cookies"%>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	if (id.equals(password)) {
		response.addCookie(Cookies.createCookie("AUTH", id, "/", -1));
%>
<!DOCTYPE html>
<html>
<title>Insert title here</title>
<body>
로그인에 성공하였습니다.
</body>
</html>
<%
	} else {
%>
<script>
	alert("로그인에 실패하였습니다.");
	history.go(-1);
</script>
<%
	}
%>