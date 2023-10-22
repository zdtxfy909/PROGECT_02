package com.postlounge.model.vo;

import java.sql.Date;
import java.util.Arrays;

public class PostListVO {
	private int postIdx;
	private String title;
    private String postContent;
    private byte[] postPhoto;
    private int hit;
    private Date postDate;
    private String postType;
    private int memberIdx;
    private int commentIdx;
    private String name;
    private int likeNum;
	   
	public int getPostIdx() {
		return postIdx;
	}
	public void setPostIdx(int postIdx) {
		this.postIdx = postIdx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPostContent() {
		return postContent;
	}
	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}
	public byte[] getPostPhoto() {
		return postPhoto;
	}
	public void setPostPhoto(byte[] postPhoto) {
		this.postPhoto = postPhoto;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public Date getPostDate() {
		return postDate;
	}
	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}
	public String getPostType() {
		return postType;
	}
	public void setPostType(String postType) {
		this.postType = postType;
	}
	public int getMemberIdx() {
		return memberIdx;
	}
	public void setMemberIdx(int memberIdx) {
		this.memberIdx = memberIdx;
	}
	public int getCommentIdx() {
		return commentIdx;
	}
	public void setCommentIdx(int commentIdx) {
		this.commentIdx = commentIdx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getLikeNum() {
		return likeNum;
	}
	public void setLikeNum(int likeNum) {
		this.likeNum = likeNum;
	}
	
	@Override
	public String toString() {
		return "PostListVO [postIdx=" + postIdx + ", title=" + title + ", postContent=" + postContent + ", postPhoto="
				+ Arrays.toString(postPhoto) + ", hit=" + hit + ", postDate=" + postDate + ", postType=" + postType
				+ ", memberIdx=" + memberIdx + ", commentIdx=" + commentIdx + ", name=" + name + ", likeNum=" + likeNum
				+ "]";
	}
	   
	   
}
