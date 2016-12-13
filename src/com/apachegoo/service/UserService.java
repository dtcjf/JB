package com.apachegoo.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.apachegoo.mapper.UserMapper;
import com.apachegoo.model.User;

@Service
public class UserService {
	@Resource(name = "userMapper")
	private UserMapper userMapper;

	public List<User> findAllUser() {
		return userMapper.findAllUser();
	}

	public Map<String, String> index() {
		Map<String, String> returnMap = new HashMap<String, String>();
		User user = userMapper.findBlogHost();
		if (user != null) {
			returnMap.put("uName", user.getUserName());
			returnMap.put("uId", user.getUserId());
			returnMap.put("uSignature", user.getUserSignature());
		}
		return returnMap;
	}
	
	public boolean checkLogin(String... strings ){
		User user=userMapper.findBlogHost();
		if (strings[0].equals(user.getUserName())&&strings[1].equals(user.getUserPwd())) {
			return true;
		}else{
			return false;
		}
		
	}
	
	public User queryUserByUserId(String userId){
		return userMapper.queryUserByUserId(userId);
	}
}
