<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색창</title>
</head>
<body>
	<h1>검색창 [Search.jsp]</h1>
	<form action="controller?type=search" type="search" method="post">
		<%-- 
		<select name="searchTypeIdx">
			<option value="0">전체게시판</option>
			<option value="1">음식</option>
			<option value="2">스포츠</option>
			<option value="3">영화</option>
			<option value="4">IT</option>
			<option value="5">게임</option>
		</select>
		--%>
		<select name="idx">
			<option value="0">제목</option>
			<option value="1">내용</option>
			<option value="2">작성자</option>
			<option value="3">댓글</option>
		</select>
		<input type="text" name="keyword">
		<input type="submit" value="검색">
	</form>
</body>
</html>