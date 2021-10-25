<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>delete.jsp<hr>
	id : ${userId }<br>
	id : ${ sessionScope.userId }
	
	<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
	
	<c:set var="result" value="${dao.delete(userId) }" />
	
	<c:choose>
	<c:when test="${result == 1 }">
		<script type="text/javascript">
			alert('삭제 성공~!!!');
			location.href='membership.jsp'
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert('삭제 실패~!!!');
			location.href='member_info.jsp?id=${dto.getId()}'
		</script>
	</c:otherwise>
</c:choose>
	
	
</body>
</html>







