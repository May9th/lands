package com.may9th.main.auth.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

	/**
	 * �α��ν� ���� ������ Ȯ�� �ϴ� �޼ҵ�
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
