package com.apachegoo.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.apachegoo.model.Comment;

@Repository("commentMapper")
public interface CommentMapper {
	public List<Comment> findAllComment();
	
	public List<Comment> queryCommentByArticleId(int articleId);
	
	public int addComment(Map<String, String> params);
}
