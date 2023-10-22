<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h2>회원가입</h2>
	<hr>
	
	<form action="signup_ok.jsp" method="post">
	<table>
		<tbody>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<th>성명</th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<th>닉네임</th>
				<td><input type="text" name="nickname"></td>
			</tr>
			<tr>
                <th>프로필</th>
                <td><input type="file" name="photo"></td>
            </tr>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="2">
					<input type="submit" value="회원가입">
					<input type="reset" value="초기화">
				</td>
			</tr>
		</tfoot>
	</table>
	</form>
</body>
</html>