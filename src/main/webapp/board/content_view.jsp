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
<body>

<c:import url="../default/header.jsp"/>
<div class="wrap">

	<jsp:useBean id="dao" class="com.care.root.board.dao.BoardDAO"/>
	<c:set var="dto" value="${dao.contentView(param.id, 1) }"/>
	
	<form action="modify.jsp" method="post">
		<input type="hidden" name="id" value="${dto.id }">
		<table border="1">
<tr> <th>번호</th> <td>${dto.id }</td> </tr>
<tr> <th>조회수</th> <td>${dto.hit }</td> </tr>
<tr> <th>이름</th> <td><input type="text" name="name" value="${dto.name }"></td> </tr>

<tr> <th>제목</th> <td><input type="text" name="title" value="${dto.title }"></td> </tr>

<tr> <th>내용</th> <td><textarea rows="10" cols="30" name="content">${dto.content }</textarea> </td> </tr>

<tr> <td colspan="2">
	<input type="submit" value="수정">&nbsp;&nbsp;
	<a href="list.jsp">목록이동</a>&nbsp;&nbsp;
	<a href="delete.jsp?id=${dto.id }">삭제</a>&nbsp;&nbsp;
	<a href="reply_view.jsp?id=${dto.id }">답변</a>
</td> </tr>

		</table>
	</form>
	
</div>
<c:import url="../default/footer.jsp"/>

</body>
</html>








