package com.apachegoo.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.apachegoo.service.ArticleService;
import com.apachegoo.service.UserService;
import com.apachegoo.utils.WebUtils;

@Controller
public class UserController {
	@Resource
	public UserService userService;
	@Resource
	private ArticleService articleService;

	@RequestMapping(value = "/all")
	public void findAllUser(HttpServletRequest request, HttpServletResponse response) {
		WebUtils.showJson(request, response, userService.findAllUser().toString());
	}

	/**
	 * 查询文章列表，分页大小为10
	 * @param request
	 * @param response
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping(value = "/index")
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response, ModelAndView modelAndView) {
		modelAndView.addAllObjects(userService.index());
		Map<String, String> params = new HashMap<String, String>();
		Object pagenum=request.getParameter("pagenum");
		if (pagenum instanceof String) {
			params.put("pageNo", (String)pagenum);
			params.put("num", "10");
			request.setAttribute("pageNo", pagenum);
		}else {
			params.put("pageNo", "1");
			params.put("num", "10");
			request.setAttribute("pageNo", "1");
		}
		modelAndView.addObject("article", articleService.getArticle(params));
		request.setAttribute("total",articleService.getCount()%10>0?articleService.getCount()/10+1:articleService.getCount()/10);
		modelAndView.setViewName("index");
		return modelAndView;
	}
	
 	/**
 	 * 跳转到登录，返回login跳转到登录，返回forward，跳转到首页
 	 * @param request
 	 * @param response
 	 * @return
 	 */
 	@RequestMapping(value="/tologin")
	public String toLogin(HttpServletRequest request, HttpServletResponse response){
 		HttpSession session=request.getSession();
 		if (session.getAttribute("jf")!=null) {
			if ((boolean) session.getAttribute("jf")) {
				return "forward:index";
			}else{
				return "login";
			}
		}else{
			return "login";
		}
 		
 	}
 	
 	/**
 	 * 登录blog
 	 * @param request
 	 * @param response
 	 * @return
 	 */
 	@RequestMapping(value="/login")
 	public @ResponseBody String login(HttpServletRequest request, HttpServletResponse response){
 		String userName=request.getParameter("username");
 		String password=request.getParameter("password");
 		if (userService.checkLogin(userName,password)) {
 			HttpSession session=request.getSession();
 			session.setAttribute("jf", true);
 			session.setMaxInactiveInterval(60*60);
 			return "success";
		} else {
			return "error";
		}
 	}

}
