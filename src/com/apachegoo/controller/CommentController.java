package com.apachegoo.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.apachegoo.service.CommentService;

@Controller
public class CommentController {
	@Resource
	private CommentService commentService;
	
	@RequestMapping(value="/comment",method=RequestMethod.POST)
	public @ResponseBody String comment(HttpServletRequest request, HttpServletResponse response){
		Map<String , String> params=new HashMap<String,String>();
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String content=request.getParameter("content");
		String articleid=request.getParameter("articleid");
		params.put("username", username);
		params.put("email", email);
		params.put("content", content);
		params.put("articleid", articleid);
		boolean flag=commentService.addComment(params);
		if (flag) {
			return "success";
		}else{
			return "error";
		}
	}
}
