package com.may9th.main.auth.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

	/**
	 * 로그인시 유저 정보를 확인 하는 메소드
	 * @param strUserId
	 * @param strUserPw
	 * @throws Exception
	 */
	@RequestMapping(value="main/signIn.do")
	public void doSignIn(@RequestParam(value="userId", defaultValue="") String strUserId,
						 @RequestParam(value="userPw", defaultValue="") String strUserPw) throws Exception
	{
		System.out.println("@@@ " + strUserId + "@@@ " + strUserPw);
	}
}
