<%@page import="com.postlounge.model.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
	<jsp:useBean id="memberVO" class="com.postlounge.model.vo.MemberVO" />
	<jsp:setProperty property="*" name="memberVO"/>
<%
	try {
		int result = MemberDAO.insert(memberVO);
%>
	<script type="text/javascript">
		alert("정상 입력되었습니다\n로그인페이지로 이동합니다");
		location.href = "login.jsp";
	</script>
<%
	} catch (Exception e) {
		e.printStackTrace();
%>	
	<script>
		alert("[예외발생] 입력 작업 중 오류발생!!!\n"
				+ "담당자(8282)에게 연락하세요\n"
				+ "이전페이지로 이동합니다.");
		history.back();
	</script>
<%
	}
%>	
