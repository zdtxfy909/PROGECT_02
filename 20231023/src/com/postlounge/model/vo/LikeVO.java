package com.postlounge.model.vo;

public class LikeVO {
	private int likeNum;
	private int postIdx;
	private int commentIdx;
	
	public LikeVO() {}
	public LikeVO(int likeNum, int postIdx, int commentIdx) {
		super();
		this.likeNum = likeNum;
		this.postIdx = postIdx;
		this.commentIdx = commentIdx;
	}
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
		return "LikesVO [likeNum=" + likeNum + ", postIdx=" + postIdx + ", commentIdx=" + commentIdx + "]";
	}
	
}
