<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<c:import url="../default/header.jsp"/>
<div class="wrap" style="text-align: right; margin-top: 20px;" >

	<c:choose>
		<c:when test="${loginUser == null }">
		<form action="${contextPath }/login/loginChk.jsp" method="post">
		<input type="text" name="id" placeholder="input id"><br>
		<input type="password" name="pwd" placeholder="input password"><br>
		<input type="submit" value="로그인">
		<a href="${contextPath }/member/member_register.jsp">회원가입</a>
		</c:when>
		<c:otherwise>
			${loginUser }님 환영합니다
		</c:otherwise>
	</c:choose>
	
	
	
	</form>
</div>
</body>
</html>