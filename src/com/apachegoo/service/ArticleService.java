package com.apachegoo.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.apachegoo.mapper.ArticleMapper;
import com.apachegoo.model.Article;

import net.sf.json.JSONArray;

@Service("articleService")
public class ArticleService {
	@Resource(name = "articleMapper")
	private ArticleMapper articleMapper;

	/**
	 * 分页获取文章列表
	 * @param params
	 * @return
	 */
	public String getArticle(Map<String, String> params) {
		Map<String, Integer> queryMap = new HashMap<String, Integer>();
		
		if (!"1".equals( params.get("pageNo"))) {
			int start = (Integer.parseInt(params.get("pageNo")) - 1) * Integer.parseInt(params.get("num"));
			queryMap.put("start", start);
			queryMap.put("num", Integer.parseInt(params.get("num")));
			List<Map<String, String>> resultList = articleMapper.queryArticle(queryMap);
			JSONArray jsonArray = JSONArray.fromObject(resultList);
			return jsonArray.toString();
		} else {
			int start = 0;
			queryMap.put("start", start);
			queryMap.put("num", Integer.parseInt(params.get("num")));
			List<Map<String, String>> resultList = articleMapper.queryArticle(queryMap);
			JSONArray jsonArray = JSONArray.fromObject(resultList);
			return jsonArray.toString();
		}
	}
	
	public int getCount(){
		return articleMapper.getArticleCount();
	}
	
	public int insertArticle(Map<String, Object> params){
		return articleMapper.insertArticle(params);
	}
	
	public Article queryArticleById(int id){
		return articleMapper.queryArticleById(id);
	}
	
	public void plusVisitTime(int id){
		 articleMapper.plusVisitTime(id);
	}
}
