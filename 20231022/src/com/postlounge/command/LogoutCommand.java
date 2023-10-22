package com.postlounge.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//세션 무효화시키기
		HttpSession session = request.getSession(false); //세션이 존재하지 않으면 null
		
		if (session != null) {
			session.invalidate();
			System.out.println("세션이 무효화되었습니다.");
		} else {
			System.out.println("세션이 이미 무효화되었거나 존재하지 않습니다.");
		}
		
		//응답페이지로 리턴
		return "main.jsp";
	}
	
}
