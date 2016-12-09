package com.apachegoo.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.apachegoo.mapper.ArticleMapper;
import com.apachegoo.model.Article;
import com.apachegoo.service.ArticleService;

@Controller
public class ArticleController {
	@Resource
	private ArticleService articleService;

	@RequestMapping(value = "/edit")
	public ModelAndView edit(HttpServletRequest request, HttpServletResponse response, ModelAndView modelAndView) {
		modelAndView.setViewName("edit");
		return modelAndView;
	}

	@RequestMapping(value = "/push")
	public @ResponseBody String push(HttpServletRequest request, HttpServletResponse response) {
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		Map<String, String> params = new HashMap<String, String>();
		SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date=new Date();
		params.put("article_category_id", "0");
		params.put("article_title", title);
		params.put("article_content", content);
		params.put("updateTime", simpleDateFormat.format(date));
		params.put("visitTime", "0");
		if (1 == articleService.insertArticle(params)) {
			return "success";
		} else {
			return "error";
		}
	}
	//restful传递参数
	@RequestMapping(value = "/article/{articleId}")
	public ModelAndView article(@PathVariable String articleId,HttpServletRequest request, HttpServletResponse response, ModelAndView modelAndView) {
		System.out.println(articleId);
		modelAndView.setViewName("article");
		Article article= articleService.queryArticleById(Integer.parseInt(articleId));
		modelAndView.addObject("article",article);
		return modelAndView;
	}
}
