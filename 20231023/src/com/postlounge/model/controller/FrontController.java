package com.postlounge.model.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.postlounge.model.command.BestCommand;
import com.postlounge.model.command.Command;
import com.postlounge.model.command.FeedCommand;
import com.postlounge.model.command.JoinCommand;
import com.postlounge.model.command.LoginCommand;
import com.postlounge.model.command.MyCommand;
import com.postlounge.model.command.SearchCommand;
import com.postlounge.model.command.SelectFriendsCommand;

@WebServlet("/POSTLOUNGE/controller")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
		
		Command command = null;
		
		if ("search".equals(type)) {
			command = new SearchCommand();
		}
		
		if ("join".equals(type)) {
			command = new JoinCommand();
		}
		
		if ("login".equals(type)) {
			command = new LoginCommand();
		}
		
		if ("best".equals(type)) {
			command = new BestCommand();
		}
		
		if ("feed".equals(type)) {
			command = new FeedCommand();
		}
		
		if ("my".equals(type)) {
			command = new MyCommand();
		}
		if ("selectFriends".equals(type)) {
			command = new SelectFriendsCommand();
		}
		
		String path = command.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> FrontControllerCommand doPost() 실행~~~~");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
		
	}
}
