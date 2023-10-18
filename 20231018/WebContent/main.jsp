<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시작화면</title>
<script>
	function search_go(){
		location.href = "controller?type=search";
	}
	function login() {
		location.href = "controller?type=login";
	}
</script>
</head>
<body>
	<h1>포스트 시작화면 [ main.jsp ]</h1>
	<div id="header">
		<button onclick="search_go()">검색</button>
		<button onclick="login()">로그인</button>
	</div>
	<div id="nav">
	<ul>
		<li><a href="">베스트</a></li>
		<li><a href="">피드</a></li>
		<li><a href="">MY</a></li>
	</ul>
	</div>
	
	
</body>
</html>