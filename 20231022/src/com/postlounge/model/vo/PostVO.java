package com.postlounge.model.vo;

import java.sql.Date;
import java.util.Arrays;

public class PostVO {
   private int postIdx;
   private String title;
   private String postContent;
   private byte[] postPhoto;
   private int hit;
   private Date postDate;
   private String postType;
   private int memberIdx;
   private int commentIdx;
   
   
	public PostVO(String title, String postContent, byte[] postPhoto, Date postDate, String postType,
		int memberIdx) {
	this.title = title;
	this.postContent = postContent;
	this.postPhoto = postPhoto;
	this.postDate = postDate;
	this.postType = postType;
	this.memberIdx = memberIdx;
}
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
	
	@Override
	public String toString() {
		return "PostVO [postIdx=" + postIdx + ", title=" + title + ", postContent=" + postContent + ", postPhoto="
				+ Arrays.toString(postPhoto) + ", hit=" + hit + ", postDate=" + postDate + ", postType=" + postType
				+ ", memberIdx=" + memberIdx + ", commentIdx=" + commentIdx + "]";
	}
	
		
	
	
}
