package com.apachegoo.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.apachegoo.service.UserService;
import com.apachegoo.utils.WebUtils;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	@Resource
	public UserService userService;

	@RequestMapping(value = "/all")
	public void findAllUser(HttpServletRequest request, HttpServletResponse response) {
		WebUtils.showJson(request, response, userService.findAllUser().toString());
	}

	@RequestMapping(value = "/index")
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response, ModelAndView modelAndView) {
		modelAndView.addAllObjects(userService.index());
		modelAndView.setViewName("index");
		return modelAndView;
	}

}
