<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fmt:requestEncoding value="utf-8"/>
	
	<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO" />
	<jsp:useBean id="dto" class="com.care.root.member.dto.MemberDTO" />
	<jsp:setProperty property="*" name="dto"/>
	<c:set var="result" value="${dao.insertMem(dto) }" />
	결과 : ${result }
	<c:choose>
		<c:when test="${result == 1 }">
			<script type="text/javascript">
				alert("회원가입을 축하 합니다!!!")
				location.href="${contextPath}/member/memberView.jsp";
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("존재하는 아이디 입니다 또는 서버에 문제 발생!!!!")
				location.href="${contextPath}/member/register_view.jsp";
			</script>
		</c:otherwise>
	</c:choose>
	
</body>
</html>









