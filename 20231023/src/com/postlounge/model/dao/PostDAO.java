package com.postlounge.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.postlounge.model.vo.PostListVO;
import com.postlounge.model.vo.PostVO;
import com.postlounge.mybatis.DBService;

public class PostDAO {
	
	//게시물 업로드
	public static int writePost(PostVO vo) {
		SqlSession ss = DBService.getFactory().openSession();
		int result = ss.insert("post.insertPost", vo);
		ss.commit();
		ss.close();
	
		return result;
	}
	
	//메인페이지에 전체 글 가져오기
	public static List<PostListVO> getPostList() {
		SqlSession ss = DBService.getFactory().openSession();
		List<PostListVO> list = ss.selectList("post.getPostList");
		ss.close();
		return list;
	}
	
	//내가 팔로우하는 사람들의 게시글 목록 가져오기
	public static List<PostListVO> getFriendsPost() {
		SqlSession ss = DBService.getFactory().openSession();
		List<PostListVO> list = ss.selectList("post.getFriendsPost");
		ss.close();
		return list;
	}
	
	
}
