package com.postlounge.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.postlounge.model.dao.MemberDAO;
import com.postlounge.model.dao.PostDAO;
import com.postlounge.model.vo.PostVO;

public class WriteCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//write 요청 처리
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		System.out.println(">>> WriteCommand id : " + id);
		System.out.println(">>> WriteCommand pwd : " + pwd);

		String postTitle = request.getParameter("postTitle");
		String postContent = MultipartRequest.getParameter("postContent");
		part postPhoto = request.getParameter("postPhoto");
		String postType = request.getParameter("postType");
		
		HttpSession session = request.getSession();
		int memberIdx = MemberDAO.getMemberIdx(id, pwd);
		session.setAttribute("MEMBER_IDX", memberIdx);
		System.out.println("memberIdx : " + memberIdx);
		
		postTitle = request.getParameter("postTitle");
		postContent = request.getParameter("postContent");
		
		System.out.println(">>> WriteCommand postTitle : " + postTitle);
		System.out.println(">>> WriteCommand postContent : " + postContent);
		
		String path = null;
		PostVO vo = new PostVO(postTitle, postContent, postPhoto,
				postType);
		
		int result = -1;
		result = PostDAO.insertPost(vo);
		
		//화면분기처리
		if (result > 0){
			response.sendRedirect("write_ok.jsp");
		} else {
			return "write.jsp";
		}
		
		return null;
	}

}
