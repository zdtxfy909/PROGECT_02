package com.postlounge.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.postlounge.command.Command;
import com.postlounge.model.dao.PostDAO;
import com.postlounge.model.vo.PostListVO;
import com.postlounge.model.vo.PostVO;

public class PostListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//DB에서 게시물 불러오기
		List<PostListVO> list = PostDAO.getPostList();
		
		//조회된 데이터를 응답페이지(main.jsp)에서 사용토록 scope에 저장
		request.setAttribute("list", list);
		
		//응답페이지로 리턴
		return "main.jsp";
	}

}
