package com.postlounge.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.postlounge.model.dao.PostDAO;
import com.postlounge.model.vo.PostVO;

public class SearchCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// search 요청 처리
		// 전달된 파라미터값 확인 (키워드)
		String keyword = request.getParameter("keyword");
		System.out.println(">>> SearchCommand keyword : " + keyword);
		
		//화면분기처리 (빈문자열 검색시 검색창으로 되돌아가기)
		if (keyword == null || keyword.trim().equals("")) {
			//null이나 빈문자열이면 검색창으로 되돌아가기
			return "search.jsp";
		}
		
		//DB연동, 데이터 검색 처리, 최종응답페이지를 리턴
		List<PostVO> list = PostDAO.getSearch(keyword);
		request.setAttribute("list", list);
		
		return "searchList.jsp";
	}

}
