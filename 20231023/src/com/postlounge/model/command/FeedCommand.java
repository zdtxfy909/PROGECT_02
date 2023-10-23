package com.postlounge.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.postlounge.model.dao.PostDAO;
import com.postlounge.model.vo.MemberVO;
import com.postlounge.model.vo.PostListVO;

public class FeedCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// feed 요청 처리
		//전달된 파라미터값 확인
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		System.out.println(">>> FeedCommand loginUser : " + loginUser);
		
		//화면분기처리
		if (loginUser == null) {
			return "login.jsp";
		}
		
		
		//DB연동, 내가 팔로우하는 사람 list만 검색 처리
		List<PostListVO> list = PostDAO.getFriendsPost();
		request.setAttribute("list", list);
		System.out.println(">>> FeedCommand list : " + list);
		
		//최종응답페이지를 리턴
		return "feed.jsp";
	}

}
