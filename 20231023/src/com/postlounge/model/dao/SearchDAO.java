package com.postlounge.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.postlounge.model.vo.PostVO;
import com.postlounge.mybatis.DBService;

public class SearchDAO {

	
	// 제목, 내용, 작성자 검색 (분기점: mapper.xml)
	public static List<PostVO> getSearch (String idx, String keyword){
		Map<String, String> map = new HashMap<>();
		map.put("idx", idx); //옵션 idx
		map.put("keyword", keyword); //검색어
		
		SqlSession ss = new DBService().getFactory().openSession();
		List<PostVO> list = ss.selectList("post.search", map);
		//dao에서 idx 분기점 나누지 말고, mapper에서 하자.
		ss.close();
		
		return list;
	}

	// 베스트 누르면 전체게시물 조회순으로 10개 나열 (겸 첫접속화면과 동일한 UI)
	public static List<PostVO> getTopList() {
		SqlSession ss = new DBService().getFactory().openSession();
		List<PostVO> list = ss.selectList("post.getTopList");
		ss.close();
		
		return list;
	}
	
	
	
}
