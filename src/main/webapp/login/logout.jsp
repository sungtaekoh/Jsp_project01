n<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- logout -->
	<script type="text/javascript">
		alert('${loginUser}님 로그아웃 되었습니다.')
		location.href="${contextPath }/login/login.jsp"
	</script>
	<c:remove var="loginUser" scope="session"/>
</body>
</html>