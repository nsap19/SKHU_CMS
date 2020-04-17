package com.sofCap.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sofCap.dto.UserDto;
import com.sofCap.mapper.UserMapper;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	UserMapper userMapper;

	@Override
	public UserDto findByLoginId(String login_id) {
		return userMapper.findByLoginId(login_id);
	}

	@Override
	public List<UserDto> findAll() {
		return userMapper.findAll();
	}

	@Override
	public UserDto findOne(int id) {
		return userMapper.findOne(id);
	}

	@Override
	public void updateMypage(UserDto user) {
		// TODO Auto-generated method stub
		userMapper.updateMypage(user);
	}

}