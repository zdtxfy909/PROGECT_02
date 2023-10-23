<%@page import="com.postlounge.model.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 작성하기</title>
<script>
	
	function list_go(){
		location.href="bestList.jsp";
	}
	
	// enctype="multipart/form-data"
</script>
</head>
<body>

<div id="bbs">
	<form action="insertPost" method="post" enctype="multipart/form-data" id="writeForm">		
	<table>
		<caption>게시판 글쓰기</caption>
		<tbody>
			<tr>
				<th>제목</th>
				<td>
					<input type="text" name="title" title="제목">
				</td>
			</tr>
			<tr>
				<th>카테고리</th>
				<td>
					<input type="text" name="postType" title="카테고리">
				</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>
					<p><input type="text" name="writer" title="작성자" value="<%=((MemberVO)session.getAttribute("loginUser")).getNickname() %>" readonly></p>
				</td>
			</tr>	
			<tr>
				<th>내용</th>
				<td>
					<textarea name="content" rows="8" cols="50" title="내용"></textarea>
				</td>
			</tr>
			<tr>
				<th>첨부파일</th>
				<td>
					<input type="file" name="fileName">
				</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="2">
					<input type="submit" value="저장">
					<input type="reset" value="초기화">
					
					<input type="button" value="목록보기" onclick="list_go()">
				</td>
			</tr>
	</table>	
	</form>
</div>
</body>
</html>