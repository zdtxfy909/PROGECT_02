<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>상세보기</title>
</head>
<body>
	<table>
		<c:forEach var="vo" items="${list }">
		<thead>
			<tr>
				<th>제목 : ${vo.title }</th>
				<th>작성자 : ${vo.name }</th>
				<th>조회수 : ${vo.hit }</th>
				<th>좋아요 : ${vo.likeNum }</th>
				<th>날짜 : ${vo.postDate }</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>내용 : ${vo.postContent }</td>
			</tr>
		</tbody>
		</c:forEach>
	</table>
</body>
</html>