<%@page import="com.postlounge.model.dao.MemberDAO"%>
<%@page import="com.postlounge.model.vo.MemberVO"%>
<%@page import="com.postlounge.mybatis.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");	
%>
	<jsp:useBean id="memberVO" class="com.postlounge.model.vo.MemberVO" >
		<jsp:setProperty property="*" name="memberVO" />
	</jsp:useBean>
<%
	String id = memberVO.getId();
	System.out.println("id : " + id);
	String nickname = memberVO.getNickname();
	System.out.println("nickname : " + nickname);
	
	try {
	    boolean isDuplicate = MemberDAO.checkDuplicate(id, nickname);

	    if (isDuplicate) {
%>
	        <script>
	            alert("중복된 아이디 또는 닉네임이 있습니다. 다른 값을 입력해주세요.");
	            history.back();
	        </script>
<%
	    } else {
	        int result = MemberDAO.insert(memberVO);

	        if (result > 0) {
%>      
	        <script>
	            alert("회원 가입이 성공적으로 완료되었습니다\n로그인 페이지로 이동합니다.");
	            location.href = "login.jsp";
	        </script>
<%
	        } else {
%>
	        <script>
	            alert("회원 가입 중 오류가 발생했습니다.\n이전 페이지로 이동합니다.");
	            history.back();
	        </script>
<%
	        }
	    }
	} catch (Exception e) {
	    e.printStackTrace();
%>
	    <script>
	        alert("[예외발생] 회원 가입 중 오류발생!!!\n담당자(010-2736-6119)에게 연락하세요\n이전 페이지로 이동합니다.");
	        history.back();
	    </script>
<%      
	} 
%>
		