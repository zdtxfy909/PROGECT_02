<%@page import="com.postlounge.model.dao.MemberDAO"%>
<%@page import="com.postlounge.model.vo.MemberVO"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");    
    String pwd = request.getParameter("pwd");
    try {
        MemberVO vo = MemberDAO.login(id, pwd);
        System.out.println("> vo : " + vo);
        if (vo == null) {
%>
        <script>
            alert("로그인 실패!!!\n"
            		+ "아이디, 암호를 확인하세요\n"
            		+ "로그인페이지로 이동합니다");
            location.href = "login.jsp";
        </script>
<%        	
            return;
        }
        MemberVO loginUser = MemberDAO.selectOne(vo.getId());
        System.out.println("> loginUser : " + loginUser);
        session.setAttribute("memberVO", loginUser);
        session.setAttribute("loginUser", loginUser);
%>
        <script>
            alert("로그인 성공!!! 회원정보 페이지로 이동합니다");
            location.href = "main.jsp";
        </script>
<%
    } catch (Exception e) {
%>
        <script>
            alert("[예외발생] 입력 작업 중 오류발생!!!\n"
                    + ":::오류메시지 : <%=e.getMessage()%>\n"
            		+ "담당자(8282)에게 연락하세요\n"
                    + "이전페이지로 이동합니다.");
            history.back();
        </script>
<%      
    } 
%>