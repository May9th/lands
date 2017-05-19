package com.may9th.bbs;

import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BbsController {

	Logger log = Logger.getLogger(this.getClass());
	
	/**
	 * �Խ��� ȭ���� ����Ѵ�.
	 * @return jsp ���
	 */
	@RequestMapping(value="/may9th/bbs/mainView.do")
	public String getViewArticleList(){
		return "/bbs/bbsList";
	}
	
	/**
	 * �Խñ۵��� ����Ѵ�.
	 * @param mpParam bbsList.jsp���� map������ json�����͸� ��
	 * @return �Խñ� ������
	 */
	@RequestMapping(value="/bbs/getArticleList.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> getArticleList(@RequestBody HashMap<String, Object> mpParam){
		
		String strBbsId = mpParam.get("intBbsId").toString();
		String strSearchValue = mpParam.get("strSearchValue").toString();
		
		Map<String,Object> mpResultParam = new HashMap<String,Object>();
		
		mpResultParam.put("hello", strBbsId);
		mpResultParam.put("hhh", strSearchValue);
		
		return mpResultParam;
	}
}
