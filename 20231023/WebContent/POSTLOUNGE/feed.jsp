<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피드</title>
</head>
<body>
	<h1>피드 [feed.jsp]</h1>
	<hr>
	<h4>팔로잉</h4>
	<h4><form action="/POSTLOUNGE/controller?type=selectFriends">1</form></h4>
	
	
	<%-- <div>
		팔로잉 : ${vo.FRIEND_NUM}
		포스트 : ${vo.포스트 카운터}
	</div> --%>
	<hr>
	<%-- <c:forEach var="vo" items="list">
		<ul>
			<li>${vo.title}</li>
		</ul>
		${프로필사진 }
		${팔로잉 아이디 }
		${게시글 날짜}
		${제목 }
		${내용 }
		${게시물사진 }
		${좋아요:개수 }
		${댓글:개수 }
		(공유하기?)
	</c:forEach> --%>
</body>
</html>