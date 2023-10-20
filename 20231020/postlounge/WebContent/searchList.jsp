<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색결과</title>
</head>
<body>
	<h2>검색결과</h2>
	<hr>
	<h3>번호, 제목, 내용, 작성자, 조회수, 날짜</h3>
	<ul>
	<c:forEach var="vo" items="${list }">
		<li>
			${vo.postIdx }, ${vo.title }, ${vo.postContent } 
				, ${vo.memberIdx }, ${vo.hit }, ${vo.postDate }
		</li>
	</c:forEach>	
	</ul>
	
</body>
</html>