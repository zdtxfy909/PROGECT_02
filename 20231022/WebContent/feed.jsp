<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피드화면</title>
</head>
<body>
	<!-- 화면표시작업만 -->
	<h1>피드화면 [ feed.jsp ]</h1>
	<hr>
	<h4>팔로잉 2</h4>
	<hr>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>날짜</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<c:forEach var="vo" items="${list }">
					<td>${vo.postIdx }</td>
					<td>${vo.postType }</td>
					<td><a href="detail.jsp">${vo.title }</a></td>
					<td>${vo.postContent }</td>
					<td>${vo.postPhoto }</td>
					<td>${vo.name }</td>
					<td>${vo.hit }</td>
					<td>${vo.likeNum }</td>
					<td>${vo.postDate }</td>
				</c:forEach>
			</tr>
		</tbody>
	</table>
	
	
</body>
</html>