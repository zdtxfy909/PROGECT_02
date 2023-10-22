package com.postlounge.model.vo;

import java.sql.Date;

public class CommentVO {
	private int commentIdx;
	private int memberIdx;
	private int postIdx;
	private String commContent;
	private Date commDate;
	
	public int getCommentIdx() {
		return commentIdx;
	}
	public void setCommentIdx(int commentIdx) {
		this.commentIdx = commentIdx;
	}
	public int getMemberIdx() {
		return memberIdx;
	}
	public void setMemberIdx(int memberIdx) {
		this.memberIdx = memberIdx;
	}
	public int getPostIdx() {
		return postIdx;
	}
	public void setPostIdx(int postIdx) {
		this.postIdx = postIdx;
	}
	public String getCommContent() {
		return commContent;
	}
	public void setCommContent(String commContent) {
		this.commContent = commContent;
	}
	public Date getCommDate() {
		return commDate;
	}
	public void setCommDate(Date commDate) {
		this.commDate = commDate;
	}
	
	@Override
	public String toString() {
		return "CommentVO [commentIdx=" + commentIdx + ", memberIdx=" + memberIdx + ", postIdx=" + postIdx
				+ ", commContent=" + commContent + ", commDate=" + commDate + "]";
	}
	
	
	
}
