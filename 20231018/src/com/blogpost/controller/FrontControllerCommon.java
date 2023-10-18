package com.blogpost.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blogpost.command.Command;

@WebServlet("/controller")
public class FrontControllerCommon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("> FrontControllerCommon doGet() 실행 ---------");
		String type = req.getParameter("type");
		System.out.println(">> type : " + type);
		
		Command command = null;
		if ("search".equals(type)) {
			//command = new searchCommand();
		}
		
	}
}
