package com.apachegoo.model;

import java.sql.Blob;

/**
 * 文章实体类
 * @author Administrator
 *
 */
public class Article {
	private String articleId;
	private String articleCategory;
	private String articleTitle;
	private String articleContent;
	private String updateTime;
	private String visitTime;
	private String status;

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getArticleId() {
		return articleId;
	}

	public void setArticleId(String articleId) {
		this.articleId = articleId;
	}

	public String getArticleCategory() {
		return articleCategory;
	}

	public void setArticleCategory(String articleCategory) {
		this.articleCategory = articleCategory;
	}

	public String getArticleTitle() {
		return articleTitle;
	}

	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}

	public String getArticleContent() {
		return articleContent;
	}

	public void setArticleContent(String articleContent) {
		this.articleContent = articleContent;
	}

	public String getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}

	public String getVisitTime() {
		return visitTime;
	}

	public void setVisitTime(String visitTime) {
		this.visitTime = visitTime;
	}

	@Override
	public String toString() {
		return "Article [articleId=" + articleId + ", articleCategory=" + articleCategory + ", articleTitle=" + articleTitle + ", articleContent=" + articleContent + ", updateTime=" + updateTime + ", visitTime=" + visitTime + "]";
	}

}
