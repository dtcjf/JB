package com.apachegoo.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.apachegoo.mapper.CommentMapper;
import com.apachegoo.mapper.UserMapper;
import com.apachegoo.model.Comment;

@Service("commentService")
public class CommentService {
	@Resource(name="commentMapper")
	private CommentMapper commentMapper;
	@Resource
	private UserMapper userMapper;
	
	public List<Comment> queryCommentByArticleId(int articleId){
		return commentMapper.queryCommentByArticleId(articleId);
	}
	
	public boolean addComment(Map<String, String> params){
		Map<String, String > insertUserParams=new HashMap<String,String>();
		Map<String, String > addCommentParams=new HashMap<String,String>();
		SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String userid=String.valueOf(userMapper.selectCount()+1);
		insertUserParams.put("id", userid);
		insertUserParams.put("username", params.get("username"));
		insertUserParams.put("email", params.get("email"));
		addCommentParams.put("userid", userid);
		addCommentParams.put("articleid", params.get("articleid"));
		addCommentParams.put("content", params.get("content"));
		addCommentParams.put("time", simpleDateFormat.format(new Date()));
		int a=userMapper.insertCommentUser(insertUserParams);
		int b=commentMapper.addComment(addCommentParams);
		if (a==1&&b==1) {
			return true;
		}else{
			return false;
		}
	}
}
