package com.dyung.kim.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dyung.kim.dao.MemberDAO;
import com.dyung.kim.vo.MemberVO;

@Service
public class MemberService {

	@Autowired
	private MemberDAO dao;
	
	public String insertMember(MemberVO member) {
		int cnt = dao.insertMember(member);
		
		String page = "";
		if(cnt == 1) {
			page="redirect:/";
		} else {
			page="redirect:/joinForm";	
		}
		return page;
	}
}
