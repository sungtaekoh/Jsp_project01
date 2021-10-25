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
<body>modify_save.jsp<hr>
<%	request.setCharacterEncoding("utf-8"); %>


<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>

<jsp:useBean id="dto" class="com.care.root.member.dto.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>


<c:set var="result" value="${dao.modifySave(dto) }"/>
<c:choose>
	<c:when test="${result == 1 }">
		<script type="text/javascript">
			alert('수정 성공~!!!');
			location.href='member_info.jsp?id=${dto.getId()}'
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert('수정 실패~!!!');
			location.href='modify.jsp?id=${dto.getId()}'
		</script>
	</c:otherwise>
</c:choose>

	
</body>
</html>










