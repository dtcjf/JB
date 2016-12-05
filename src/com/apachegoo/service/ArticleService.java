package com.apachegoo.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.apachegoo.mapper.ArticleMapper;

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
	public String getArticle(Map<String, Integer> params) {
		Map<String, Integer> queryMap = new HashMap<String, Integer>();
		if (0 != params.get("pageNo")) {
			int start = (params.get("pageNo") - 1) * params.get("num");
			queryMap.put("start", start);
			queryMap.put("num", params.get("num"));
			List<Map<String, String>> resultList = articleMapper.queryArticle(queryMap);
			JSONArray jsonArray = JSONArray.fromObject(resultList);
			return jsonArray.toString();
		} else {
			int start = 0;
			queryMap.put("start", start);
			queryMap.put("num", params.get("num"));
			List<Map<String, String>> resultList = articleMapper.queryArticle(queryMap);
			JSONArray jsonArray = JSONArray.fromObject(resultList);
			return jsonArray.toString();
		}
	}
}
