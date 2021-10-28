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
	<jsp:useBean id="dao" class="com.care.root.board.dao.BoardDAO" />
	<c:set var="pc" value="${dao.pagingNum(param.start) }"/>
	<table border="1">
		<tr>
			<th>번호</th> <th>이름</th> <th>제목</th> <th>날짜</th> <th>조회수</th> 
			<th>groupId</th> <th>step</th> <th>indent</th> 
		</tr>
		<c:forEach var="dto" items="${dao.list(pc.startPage, pc.endPage) }">
		<tr>
			<td>${dto.id }</td> <td>${dto.name }</td> 
			
			<td>
			<c:forEach begin="1" end="${dto.indent }">-></c:forEach>
				<a href="content_view.jsp?id=${dto.id }">${dto.title }</a>
			</td> 
			
			<td>${dto.savedate }</td>
			<td>${dto.hit }</td> <td>${dto.idgroup }</td> <td>${dto.step }</td> <td>${dto.indent }</td>
		</tr>
		</c:forEach>
		<tr>
			<td colspan="8">
			<c:choose>
				<c:when test="${param.start == null }">
					<c:set var="start" value="1"/>
				</c:when>
				<c:otherwise>
					<c:set var="start" value="${param.start }"/>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${start > 1 }">
				<button type ="button" onclick=
					"location.href='list.jsp?start=${start-1}'">이전</button>
				</c:when>
				<c:otherwise>
					<button type="button" disabled>이전</button>
				</c:otherwise>
			</c:choose>
			
			<c:forEach var="cnt" begin="1" end="${pc.totEndPage }" step="1">
				<a href="list.jsp?start=${cnt }">[${cnt }]</a>
			</c:forEach>
			
			<c:choose>
				<c:when test="${start < pc.totEndPage }">
				<button type ="button" onclick=
					"location.href='list.jsp?start=${start+1}'">다음</button>
				</c:when>
				<c:otherwise>
					<button type="button" disabled>다음</button>
				</c:otherwise>
			</c:choose>
			
			
				<a href="write_view.jsp">글작성</a>
			</td>
		</tr>
	</table>
</div>
<c:import url="../default/footer.jsp"/>

</body>
</html>






