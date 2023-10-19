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
	function feed_go() {
		location.href = "controller?type=feed";
	}
	function mypage_go() {
		location.href = "controller?type=mypage";
	}
	function main_go() {
		location.href = "main.jsp";
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
		<li onclick="main_go()">베스트</li>
		<li onclick="feed_go()">피드</li>
		<li onclick="mypage_go()">MY</li>
	</ul>
	</div>
	
	
</body>
</html>