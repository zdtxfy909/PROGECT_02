package com.postlounge.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FeedCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// feed 요청 처리
		//전달된 파라미터값 확인
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		System.out.println(">>> FeedCommand id : " + id);
		System.out.println("FeedCommand password : " + password);
		
		//화면분기처리
		if (id == null || id.trim().equals("")) {
			//null이나 빈문자열이면 검색창으로 되돌아가기
			return "login.jsp";
		}
		
		return "feed.jsp";
	}

}
