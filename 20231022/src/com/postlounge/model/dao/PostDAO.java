package com.postlounge.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.postlounge.model.vo.PostListVO;
import com.postlounge.model.vo.PostVO;
import com.postlounge.mybatis.DBService;

public class PostDAO {
	
	//메인페이지에서 전체 글 가져오기(조회수순으로 TOP10)
	public static List<PostListVO> getPostList() {
		SqlSession ss = DBService.getFactory().openSession();
		List<PostListVO> list = ss.selectList("postlounge.getPostList");
		ss.close();
		return list;
	}
	
	//글쓰기
	public static int insertPost(PostVO vo) {
		SqlSession ss = DBService.getFactory().openSession();
		int result = ss.insert("postlounge.insertPost", vo);
		ss.close();
		return result;
	}
	
	
	//게시물 전체 수량 구하기
	public static int getTotalCount(){
		int totalCount = 0;
		
		SqlSession ss = DBService.getFactory().openSession();
		try {
			totalCount = ss.selectOne("postlounge.totalCount");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ss.close();
		}
		
		return totalCount;
	}
	
	//동적검색
	public static List<PostVO> getSearch(String keyword) {
		SqlSession ss = DBService.getFactory().openSession();
		List<PostVO> list = ss.selectList("postlounge.searchList", keyword);
		ss.close();
		return list;
	}

	//글 상세보기
	public static List<PostListVO> selectOne(int postIdx) {
		SqlSession ss = DBService.getFactory().openSession();
		List<PostListVO> list = ss.selectList("postlounge.selectOne");
		ss.close();
		return list;
	}
	
}
