package com.apachegoo.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.apachegoo.model.User;
@Repository("userMapper")
public interface UserMapper {
	public List<User> findAllUser();
	// 查询博主信息
	public User findBlogHost();
	
	public User queryUserByUserId(String userId);
	
	public int insertCommentUser(Map<String,  String> params);
	
	public int selectCount();
}
