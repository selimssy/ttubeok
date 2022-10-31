package com.spring.ttubeok.user.service;

import com.spring.ttubeok.user.model.UserVO;

public interface IUserService {
		
	// 회원가입 기능
	void register(UserVO user);
	
	// 아이디 중복체크 기능
	Integer checkId(String userId);
			
	// 회원탈퇴 기능
	void delete(String userId);
	
}
