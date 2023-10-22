package com.postlounge.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.postlounge.model.dao.PostDAO;
import com.postlounge.model.vo.PostListVO;


public class FeedCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// feed 요청 처리
		//전달된 파라미터값 확인
		String id = request.getParameter("id");
		//String password = request.getParameter("password");
		System.out.println(">>> FeedCommand id : " + id);
		//System.out.println("FeedCommand password : " + password);
		
		//화면분기처리
		if (id == null || id.trim().equals("")) {
			//id값이 null이거나 빈문자열이면 로그인창으로 가기
			return "login.jsp";
		}
		
		//DB연동, 데이터 검색 처리, 최종응답페이지를 리턴
		List<PostListVO> list = PostDAO.getPostList();
		request.setAttribute("list", list);
		
		return "feed.jsp";
	}

}
