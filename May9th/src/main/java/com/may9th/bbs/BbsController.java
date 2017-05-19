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
	 * 게시판 화면을 출력한다.
	 * @return jsp 경로
	 */
	@RequestMapping(value="/may9th/bbs/mainView.do")
	public String getViewArticleList(){
		return "/bbs/bbsList";
	}
	
	/**
	 * 게시글들을 출력한다.
	 * @param mpParam bbsList.jsp에서 map형태의 json데이터를 줌
	 * @return 게시글 데이터
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
