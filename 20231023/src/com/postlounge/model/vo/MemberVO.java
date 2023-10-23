package com.postlounge.model.vo;

import java.util.Arrays;

public class MemberVO {
	
	private int memberIdx;
	private String name;
	private String id;
	private String pwd;
	private String nickname;
	
	public MemberVO() {}
	public MemberVO(int memberIdx, String name, String id, String pwd, String nickname) {
		super();
		this.memberIdx = memberIdx;
		this.name = name;
		this.id = id;
		this.pwd = pwd;
		this.nickname = nickname;
	}
	public int getMemberIdx() {
		return memberIdx;
	}
	public void setMemberIdx(int memberIdx) {
		this.memberIdx = memberIdx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	@Override
	public String toString() {
		return "MemberVO [memberIdx=" + memberIdx + ", name=" + name + ", id=" + id + ", pwd=" + pwd + ", nickname="
				+ nickname + "]";
	}
	
	
	
	
}