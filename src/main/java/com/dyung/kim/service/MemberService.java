package com.dyung.kim.service;

import java.util.ArrayList;

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
	
	public String selectId(String member_id) {
		String acc_id = dao.selectId(member_id);
		
		return acc_id;
	}
	
	public ArrayList<String> selectSchoolName(String school_name){
		ArrayList<String> list = dao.selectSchoolName(school_name);
		return list;
	}
	
	public ArrayList<String> selectDepartName(String school_name){
		String school_code = dao.selectSchoolCode(school_name);
		ArrayList<String> list = dao.selectDepartName(school_code);
		return list;
	}
}
