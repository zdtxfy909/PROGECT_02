<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
<script>

	function search_go(){
		location.href="controller?type=search";
	}
	function join_go(){
		location.href="join.jsp";
	}
	function login_go(){
		location.href="login.jsp";
	}
	function best_go(){
		location.href="controller?type=best";
	}
	function feed_go(){
		location.href="controller?type=feed";
	}
	function my_go(){
		location.href="my.jsp";
	}
	function logout_go(){
		location.href="logout.jsp";
	}
	function write_go(){
		location.href="insertPost.jsp";
	}

</script>
</head>
<body>
	<thead>
		<div>
			<h1>포스트 라운지 [index.jsp]</h1>
			<button onclick="search_go()">검색</button>
			<c:choose>
	    		<c:when test="${empty sessionScope.loginUser}">
			        <!--  로그인 안한 상태 --> 
			        <button onclick="login_go()">로그인</button>
			        <button onclick="join_go()">회원가입(서블릿)</button>
	    		</c:when>
	    		<c:otherwise>
			        <!--  로그인 했음 --> 
			        <p>환영합니다. ${sessionScope.loginUser.nickname }님!</p>
			        <button onclick="logout_go()">로그아웃</button>
	    		</c:otherwise>
			</c:choose>
			<button onclick="write_go()">글쓰기</button>
		</div>
		<hr>
		<div> <%--best_go()는 메인화면 겸 전체게시물 기준 조회수 top10 페이지 --%>
			<button onclick="best_go()">베스트(main)</button>
			<button onclick="feed_go()">피드(친구게시물)</button>
			<button onclick="my_go()">my(내정보)</button>
		</div>
	</thead>
	<hr>
	<%--아래 JSON 데이터 활용 --%>
	<tbody>
		<div>
			<a>전체</a>
			<a>푸드</a>
			<a>건강</a>
			<a>음악</a>
			<a>스포츠</a>
			<a>영화</a>
		</div>
		<hr>
		<div>
			<button type="button" id="top10">TOP10</button>
			<button type="button" id="current">최근</button>
		</div>
	<%-- 내 용 --%>
	</tbody>
	
	<div>
		<a href="memberDelete.jsp">회원탈퇴</a>
		
	</div>
</body>
</html>