<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
</head>
<body>
	<h2>포스팅</h2>
	<hr>
	<div class="container">
		<form action="controller" method=post enctype="multipart/form-data">
			<table>
				<thead>
					<tr>
						<th colspan="2">게시판 글쓰기</th>
					</tr>
				</thead>	
				<tbody>
					<tr>
						<select name="postType">
							<option value="0">푸드</option>
							<option value="1">건강</option>
							<option value="2">음악</option>
							<option value="3">스포츠</option>
							<option value="4">영화</option>
						</select>
					</tr>
					<tr>
						<td>
							<input type="text" name="postTitle" placeholder="제목">
						</td>
					</tr>
					<tr>
						<td>
							<input type="file" name="postPhoto">
							<input type="submit" value="파일업로드">
						</td>
					</tr>
					<tr>
						<td>
							<textarea type="text" name="postContent" placeholder="내용을 입력하세요"></textarea>
						</td>
					</tr>
				</tbody>
				<input type="submit" value="글쓰기">
				<input type="hidden" name="type" value="write">
			</table>
			
		</form>
	</div>
</body>
</html>