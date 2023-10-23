<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.postlounge.model.vo.MemberVO"%>
<%@page import="com.postlounge.model.dao.MemberDAO"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	try{
		List<String> idList = new ArrayList<>(); 
		List<MemberVO> orin = MemberDAO.selectId();
		MemberVO vo = MemberDAO.selectOne(id);
		for (MemberVO member : orin){
			idList.add(member.getId());
		}
		System.out.println("vo : " + vo);
		System.out.println("idList : " + idList);
		if (!idList.contains(id)) {
%>
        <script>
            alert("로그인 실패\n"
            		+ "확인되지 않는 아이디입니다\n");
            history.back();
            document.frm.id.value = "";
            document.frm.pwd.value = "";
            document.frm.id.focus();
        </script>	
<% 
			return;
		} else if (idList.contains(id) && !vo.getPwd().equals(pwd)){
%>      
		<script>
            alert("로그인 실패\n"
            		+ "비밀번호가 틀립니다\n");
            history.back();
            document.frm.pwd.value = "";
            document.frm.pwd.focus();
        </script>
		
<%
			return;
		}else {
			MemberVO loginUser = MemberDAO.selectOne(vo.getId());
			System.out.println(">> loginUser : " + loginUser);
			
			session.setAttribute("memberVO", loginUser);
			session.setAttribute("loginUser", loginUser);
%>
		<script>
            alert("로그인 성공!!! 메인 페이지로 이동합니다");
            location.href = "index.jsp";
        </script>
<%
		}
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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>