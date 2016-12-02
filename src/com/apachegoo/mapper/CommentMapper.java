package com.apachegoo.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.apachegoo.model.Comment;

@Repository("commentMapper")
public interface CommentMapper {
	public List<Comment> findAllComment();
}
