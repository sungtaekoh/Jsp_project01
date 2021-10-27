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

<form action="${contextPath }/board/write_save.jsp" method="post">
	<table border="1">
		<tr>
			<th>이름</th> 
			<td> <input type="text" name="name"> </td>
		</tr>
		<tr>
			<th>제목</th> 
			<td> <input type="text" name="title"> </td>
		</tr>
		<tr>
			<th>내용</th> 
			<td> <textarea rows="10" cols="30" name="content"></textarea> </td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="저장">&nbsp;&nbsp;
				<a href="list.jsp">목록이동</a>
			</td>
		</tr>
	</table>
</form>

</div>
<c:import url="../default/footer.jsp"/>

</body>
</html>






