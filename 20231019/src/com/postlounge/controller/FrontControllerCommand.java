package com.postlounge.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.postlounge.command.Command;
import com.postlounge.command.FeedCommand;
import com.postlounge.command.LoginCommand;
import com.postlounge.command.MypageCommand;
import com.postlounge.command.SearchCommand;

@WebServlet("/controller")
public class FrontControllerCommand extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("> FrontControllerCommon doGet() 실행 ---------");
		String type = req.getParameter("type");
		System.out.println(">> type : " + type);
		
		Command command = null;
		if ("search".equals(type)) {
			command = new SearchCommand();
		}
		if ("login".equals(type)) {
			command = new LoginCommand();
		}
		if ("feed".equals(type)) {
			command = new FeedCommand();
		}
		if ("mypage".equals(type)) {
			command = new MypageCommand();
		}
		
		String path = command.exec(req, resp);
		req.getRequestDispatcher(path).forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(">> FrontControllerCommand doPost() 실행 ------");
		req.setCharacterEncoding("UTF-8");
		doGet(req, resp);
	}
	
}
