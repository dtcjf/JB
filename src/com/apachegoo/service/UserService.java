package com.apachegoo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.apachegoo.mapper.UserMapper;
import com.apachegoo.model.User;
@Service
public class UserService {
	@Resource(name="userMapper")
	public UserMapper userMapper;
	public List<User> findAllUser(){
		return userMapper.findAllUser();
	}
}
