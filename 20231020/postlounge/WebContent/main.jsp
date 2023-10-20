<%@page import="com.postlounge.model.dao.PostDAO"%>
<%@page import="com.postlounge.common.Paging"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시작화면</title>
<style>
	.inline-list li {
		display: inline;
		margin: auto;
	}
	.inline-list:nth-of-type(2) li:first-child {
    	font-weight: bold;
	}
	table {
        border-collapse: collapse; 
        width: 100%;
    }

    th, td {
        border: 1px solid black; /* 테두리 두께 및 색상 설정 */
        padding: 8px; /* 셀 안의 여백 설정 */
        text-align: center; /* 셀 안의 텍스트 정렬 설정 */
    }

    th {
        background-color: #f2f2f2; /* 헤더 셀 배경색 설정 */
    }
	
</style>
<script>
	function searchPosts() {
		location.href = "search.jsp";
	}
	function login() {
		location.href = "login.jsp";
	}
	function signup() {
		location.href = "signup.jsp";
	}
	function feed_go() {
		location.href = "controller?type=feed";
	}
	function mypage_go() {
		location.href = "controller?type=mypage";
	}
	function main() {
		location.href = "main.jsp";
	}
	function write() {
		location.href = "write.jsp";
	}
	
	
</script>
</head>
<body>
	<h1>포스트 시작화면 [ main.jsp ]</h1>
	<div id="header">
	    <!-- <input type="text" id="searchInput" placeholder="검색어를 입력하세요"> -->
	    <button onclick="searchPosts()">검색</button>
	    <button onclick="write()">글쓰기</button>
	    <button onclick="login()">로그인</button>
	    <button onclick="signup()">회원가입</button>
	</div>
	<hr>
	
	<div id="nav">
	<ul class="inline-list">
		<li onclick="main()">베스트</li>
		<li onclick="feed_go()">피드</li>
		<li onclick="mypage_go()">MY</li>
	</ul>
	<hr>
	<ul class="inline-list">
		<li onclick="main()">전체</li>
		<li onclick="food()">푸드</li>
		<li onclick="health()">건강</li>
		<li onclick="music()">음악</li>
		<li onclick="sports()">스포츠</li>
		<li onclick="movie()">영화</li>
	</ul>
	</div>
	
	<hr>
	<h4>TOP10</h4>
	<table>
		<!-- 게시물 데이터 가져와서 띄우기 -->
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
				<td>7(샘플)</td>
				<td>게시글 테스트1</td>
				<td>홍일동</td>
				<td>0</td>
				<td>2023-10-20</td>
			</tr>
		</tbody>
	</table>
	
	
</body>
</html>