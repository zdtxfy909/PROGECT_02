<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인화면</title>
</head>
<body>

<div id="container">
	<h2>로그인</h2>
	<hr>
	
	<form action="login_ok.jsp" method="post">
	<table>
		<tbody>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pwd"></td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="2">
					<input type="submit" value="로그인">
					<input type="button" value="회원가입" 
					       onclick="javascript:location.href='signup.jsp'">
				</td>
			</tr>
		</tfoot>
	</table>
	</form>
	
</div>	
</body>
</html>