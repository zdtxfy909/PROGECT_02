package com.postlounge.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.postlounge.model.dao.SearchDAO;
import com.postlounge.model.vo.PostVO;

public class SearchCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 검색 요청 처리
		// String stIdx = request.getParameter("searchTypeIdx");
		String idx = request.getParameter("idx");
		String keyword = request.getParameter("keyword");

		if (keyword == null || keyword.trim().equals("")) {
			return "search.jsp";
		}
		
		//DB연동 데이터 처리
		List<PostVO> list = SearchDAO.getSearch(idx, keyword);
		request.setAttribute("list", list);
		
		System.out.println("DB처리결과 : " + list);
		System.out.println("DB처리결과 몇개? : " + list.size());
		return "searchList.jsp";
		
	}

}
