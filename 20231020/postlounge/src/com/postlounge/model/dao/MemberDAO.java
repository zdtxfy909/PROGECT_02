package com.postlounge.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.postlounge.model.vo.MemberVO;
import com.postlounge.mybatis.DBService;


public class MemberDAO {
	public static int insert(MemberVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("postlounge.insert", vo);
		ss.close();
		return result;
	}
	
	public static MemberVO selectOne(String id) {
		SqlSession ss = DBService.getFactory().openSession();
		MemberVO vo = ss.selectOne("postlounge.one", id);
		ss.close();
		return vo;
	}
	
	public static MemberVO login(String id, String pwd) {
		SqlSession ss = DBService.getFactory().openSession();
		MemberVO vo = ss.selectOne("postlounge.login", new MemberVO(id, pwd));
		ss.close();
		return vo;
	}
	
}
