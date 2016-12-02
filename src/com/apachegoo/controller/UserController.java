package com.apachegoo.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.apachegoo.service.ArticleService;
import com.apachegoo.service.UserService;
import com.apachegoo.utils.WebUtils;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	@Resource
	public UserService userService;
	@Resource
	private ArticleService articleService;

	@RequestMapping(value = "/all")
	public void findAllUser(HttpServletRequest request, HttpServletResponse response) {
		WebUtils.showJson(request, response, userService.findAllUser().toString());
	}

	@RequestMapping(value = "/index")
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response, ModelAndView modelAndView) {
		modelAndView.addAllObjects(userService.index());
		Map<String, Integer> params = new HashMap<String, Integer>();
		params.put("pageNo", 0);
		params.put("num", 10);
		modelAndView.addObject("article", articleService.getArticle(params));
		modelAndView.setViewName("index");
		return modelAndView;
	}

}
