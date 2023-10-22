<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색화면</title>
<script>
	function searchPosts() {
	    var searchTerm = document.getElementById("searchInput").value;
	    console.log("searchTerm : " + searchTerm);
	    if (searchTerm.trim() !== "") {
	        location.href = "controller?type=search&keyword=" + encodeURIComponent(searchTerm);
	    } else {
	        alert("검색어를 입력하세요.");
	    }
	}
</script>
</head>
<body>
	<h2>검색</h2>
	<hr>
	<!-- 
	<input type="text" id="searchInput" placeholder="검색어를 입력하세요">
	<button onclick="searchPosts()">검색</button>
	-->
	
	<form action="controller?type=search" method="post">
	    <input type="text" name="keyword" placeholder="검색어를 입력하세요">
	    <input type="submit" value="검색">
	    <input type="hidden" name="type" value="search">
	</form>
	
</body>
</html>
