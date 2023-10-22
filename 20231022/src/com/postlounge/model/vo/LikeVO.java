package com.postlounge.model.vo;

public class LikeVO {
	private int likeNum;
	private int postIdx;
	private int commentIdx;
	
	public int getLikeNum() {
		return likeNum;
	}
	public void setLikeNum(int likeNum) {
		this.likeNum = likeNum;
	}
	public int getPostIdx() {
		return postIdx;
	}
	public void setPostIdx(int postIdx) {
		this.postIdx = postIdx;
	}
	public int getCommentIdx() {
		return commentIdx;
	}
	public void setCommentIdx(int commentIdx) {
		this.commentIdx = commentIdx;
	}
	
	@Override
	public String toString() {
		return "LikeVO [likeNum=" + likeNum + ", postIdx=" + postIdx + ", commentIdx=" + commentIdx + "]";
	}
	
	
	
}
