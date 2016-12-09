package com.apachegoo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ArticleController {
	@RequestMapping(value="/edit")
	public ModelAndView edit(HttpServletRequest request, HttpServletResponse response, ModelAndView modelAndView){
		modelAndView.setViewName("edit");
		return modelAndView;
	}
}
