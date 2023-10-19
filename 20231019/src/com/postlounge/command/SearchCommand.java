package com.postlounge.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SearchCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// search 요청 처리(화면전환 : 입력폼)
		// 전달된 파라미터값 확인 (키워드)
		
		//화면분기처리 (빈문자열 검색시 alert 띄우기? 검색창으로 되돌아가기?)
		
		//DB연동, 데이터 검색 처리, 최종응답페이지를 리턴
		
		
		return "searchList.jsp";
	}

}
