package com.spring.ttubeok.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import com.spring.ttubeok.user.model.UserVO;
import com.spring.ttubeok.user.service.IUserService;



@RestController
@RequestMapping("/user")
public class UserController {
	
	
	@Autowired
	private IUserService service;
	
	
	// 회원가입 요청 처리
	@PostMapping("/")
	public String register(@RequestBody UserVO user) { 
		System.out.println("/user/ 요청 : POST");
		System.out.println("param : " + user);
		
		service.register(user);
		return "joinSuccess";
	}
	
	
	
	
	// 아이디 중복확인 요청 처리
	@PostMapping("/checkId")
	public String checkId(@RequestBody String userId) {
		
		System.out.println("/user/checkId 요청 : POST");
		System.out.println("param : " + userId);
		String result = null;
		
		Integer checkNum = service.checkId(userId);
		if(checkNum == 1) {
			System.out.println("아이디가 중복됨!");
			result = "NO";
		}else {
			System.out.println("아이디 사용가능!");
			result = "OK";
		}
		
		return result;
		
	}
	
	
}
