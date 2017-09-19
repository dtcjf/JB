package com.apachegoo.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.apachegoo.model.Article;

@Repository("articleMapper")
public interface ArticleMapper {
	public List<Article> findAllArticle();

	public List<Map<String, String>> queryArticle(Map<String, Integer> params);
	
	public int getArticleCount();
	
	public int insertArticle(Map<String, Object> params);
	
	public Article queryArticleById(int id);
	
	public int plusVisitTime(int id);
}
