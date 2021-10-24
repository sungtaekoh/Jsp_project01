<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	%>
	<jsp:useBean id="dto" class="com.care.root.member.dto.MemberDTO"/>
	<jsp:setProperty property="*" name="dto"/>
	
	<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
	${dao.modify_save(dto) }
	
	<script type="text/javascript">
		location.href="member_info.jsp?id=${dto.id}";
	</script>
</body>
</html>





