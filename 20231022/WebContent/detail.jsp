<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�󼼺���</title>
</head>
<body>
	<table>
		<c:forEach var="vo" items="${list }">
		<thead>
			<tr>
				<th>���� : ${vo.title }</th>
				<th>�ۼ��� : ${vo.name }</th>
				<th>��ȸ�� : ${vo.hit }</th>
				<th>���ƿ� : ${vo.likeNum }</th>
				<th>��¥ : ${vo.postDate }</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>���� : ${vo.postContent }</td>
			</tr>
		</tbody>
		</c:forEach>
	</table>
</body>
</html>