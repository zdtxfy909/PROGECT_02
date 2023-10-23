package com.postlounge.model.vo;

import java.sql.Date;

public class CommentVO {
	private int commentIdx;
	private int memberIdx;
	private int postIdx;
	private String commContent;
	private Date commDate;
	
	
	public CommentVO() {}
	public CommentVO(int commentIdx, int memberIdx, int postIdx, String commContent, Date commDate) {
		super();
		this.commentIdx = commentIdx;
		this.memberIdx = memberIdx;
		this.postIdx = postIdx;
		this.commContent = commContent;
		this.commDate = commDate;
	}
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
		return "CommentsVO [commentIdx=" + commentIdx + ", memberIdx=" + memberIdx + ", postIdx=" + postIdx
				+ ", commContent=" + commContent + ", commDate=" + commDate + "]";
	}
	
	
	
}