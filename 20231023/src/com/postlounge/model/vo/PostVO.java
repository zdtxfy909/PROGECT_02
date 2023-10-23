package com.postlounge.model.vo;

import java.sql.Date;
import java.util.Arrays;

public class PostVO {
	
	private int postIdx;
	private String title;
	private String postContent;
	private int hit;
	private Date postDate;
	private String postType;
	private int memberIdx;
	private int commentIdx;
	private String postFileName;
	private String postOriName;
	
	public PostVO() {}

	public PostVO(int postIdx, String title, String postContent, int hit, Date postDate, String postType, int memberIdx,
			int commentIdx, String postFileName, String postOriName) {
		super();
		this.postIdx = postIdx;
		this.title = title;
		this.postContent = postContent;
		this.hit = hit;
		this.postDate = postDate;
		this.postType = postType;
		this.memberIdx = memberIdx;
		this.commentIdx = commentIdx;
		this.postFileName = postFileName;
		this.postOriName = postOriName;
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

	public String getPostFileName() {
		return postFileName;
	}

	public void setPostFileName(String postFileName) {
		this.postFileName = postFileName;
	}

	public String getPostOriName() {
		return postOriName;
	}

	public void setPostOriName(String postOriName) {
		this.postOriName = postOriName;
	}

	@Override
	public String toString() {
		return "PostVO [postIdx=" + postIdx + ", title=" + title + ", postContent=" + postContent + ", hit=" + hit
				+ ", postDate=" + postDate + ", postType=" + postType + ", memberIdx=" + memberIdx + ", commentIdx="
				+ commentIdx + ", postFileName=" + postFileName + ", postOriName=" + postOriName + "]";
	}
	
}
