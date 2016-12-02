package com.apachegoo.model;

/**
 * 评论实体类
 * @author Administrator
 *
 */
public class Comment {
	private String commentId;
	private String commentContent;
	private String commentUserId;
	private String commentArticleId;
	private String commentTime;

	public String getCommentId() {
		return commentId;
	}

	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public String getCommentUserId() {
		return commentUserId;
	}

	public void setCommentUserId(String commentUserId) {
		this.commentUserId = commentUserId;
	}

	public String getCommentArticleId() {
		return commentArticleId;
	}

	public void setCommentArticleId(String commentArticleId) {
		this.commentArticleId = commentArticleId;
	}

	public String getCommentTime() {
		return commentTime;
	}

	public void setCommentTime(String commentTime) {
		this.commentTime = commentTime;
	}

	@Override
	public String toString() {
		return "Comment [commentId=" + commentId + ", commentContent=" + commentContent + ", commentUserId=" + commentUserId + ", commentArticleId=" + commentArticleId + ", commentTime=" + commentTime + "]";
	}
}
