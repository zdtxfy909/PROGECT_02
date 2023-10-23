<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 결과</title>
</head>
<script>

</script>
<body>
	<h1>검색 결과</h1>
	
	<h3>제목, 내용, 작성자 검색 결과</h3>
	<c:forEach var="vo" items="${list }"> 
		<table border>
			<tr>
				<th>글번호</th>
				<td>${vo.postIdx}</td>
			</tr>
			<tr>
				<th>카테고리</th>
				<td>${vo.postType}</td>
			</tr>
			<tr>
				<th>제목</th> <%--링크 누르면 자세히 보는 페이지로 이동. --%>
				<td><a href="#">${vo.title}</a></td>
			</tr>
			<tr>
				<th>내용</th>
				<td>${vo.postContent}</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${vo.name}</td>
			</tr>
			<tr>
				<th>작성일</th>
				<td>${vo.postDate}</td>
			</tr>
			<tr>
				<th>조회수</th>
				<td>${vo.hit}</td>
			</tr>
			<tr>
				<th>댓글</th>
				<td>${vo.commContent}</td>
			</tr>
		</table>
		<br>
	</c:forEach>
	
	<hr><hr>
</body>
</html>