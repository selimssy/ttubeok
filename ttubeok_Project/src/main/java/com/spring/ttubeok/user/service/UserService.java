package com.spring.ttubeok.user.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.spring.ttubeok.user.model.UserVO;
import com.spring.ttubeok.user.repository.IUserMappper;

@Service
public class UserService implements IUserService {

	@Autowired
	private IUserMappper mapper;
	
	
	@Override
	public void register(UserVO user) {
		
		// 회원 비밀번호 암호화 인코딩
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		System.out.println("암호화 전 PW : " + user.getPassword());
		
		// 비밀번호를 암호화하여 다시 user 객체에 저장
		String securePw = encoder.encode(user.getPassword());
		user.setPassword(securePw);
		System.out.println("암호화 후 PW : " + securePw);
		
		mapper.register(user);		
		
	}

	@Override
	public Integer checkId(String userId) {
		return mapper.checkId(userId);
	}

	@Override
	public void delete(String userId) {
		mapper.delete(userId);
	}

}
