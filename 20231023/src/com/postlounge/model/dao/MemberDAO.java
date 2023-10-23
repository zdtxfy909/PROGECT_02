package com.postlounge.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.postlounge.model.vo.MemberVO;
import com.postlounge.mybatis.DBService;

public class MemberDAO {
	
	//회원가입 
	public static int insert(MemberVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("member.insertMember", vo);
		ss.close();
	
		return result;
	}
	
	//아이디 파라미터로 이름, 아이디, 비밀번호, 닉네임 출력 
	public static MemberVO selectOne (String id) {
		SqlSession ss = DBService.getFactory().openSession();
		MemberVO vo = ss.selectOne("member.login", id);
		ss.close();

		return vo;
	}
	
	//회원 아이디 모두 출력 
	public static List<MemberVO> selectId(){
		SqlSession ss = DBService.getFactory().openSession();
		List<MemberVO> vo = ss.selectList("member.findId");
		ss.close();
		
		return vo;
	}
	
	//회원가입시 아이디와 닉네임 중복 체크 
	public static boolean checkDuplicate(String id, String nickname){
		SqlSession ss = DBService.getFactory().openSession();
		boolean isDuplicate = false;
		try {
	        Map<String, String> params = new HashMap<>();
	        params.put("id", id);
	        params.put("nickname", nickname);
	        int result = ss.selectOne("member.duplicate", params);

	        if (result > 0) {
	            isDuplicate = true;
	        }
	    } finally {
	        ss.close();
	    }

	    return isDuplicate;
	}
	
	//회원탈퇴 
	public static void memberDelete(String id) {
		SqlSession ss = DBService.getFactory().openSession();
		
		try {
			ss.delete("member.memberDelete", id);
			ss.commit();
		} finally {
			ss.close();
		}
	}

}
