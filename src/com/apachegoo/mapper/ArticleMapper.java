package com.apachegoo.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.apachegoo.model.Article;

@Repository("articleMapper")
public interface ArticleMapper {
	public List<Article> findAllArticle();
}
