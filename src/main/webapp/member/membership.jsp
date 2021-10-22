<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>membership.jsp
	<c:import url="../default/header.jsp"/>
	<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
	
	<!-- ArrayList<MemberDTO> list = dao.getMemberList();  -->
	<c:set var="list" value="${ dao.getMemberList() }"/>
	
	<c:import url="../default/footer.jsp"/>
</body>
</html>