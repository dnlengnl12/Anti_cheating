package com.dyung.kim.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dyung.kim.dao.ManagerDAO;
import com.dyung.kim.vo.SchoolVO;

@Service
public class ManagerService {
	@Autowired
	private ManagerDAO dao;
	
	public String insertSchool(SchoolVO school) {
		String page = "redirect:/manager/successfulPage";
		
		if(dao.insertSchool(school) == 0) page = "redirect:/manager/failPage";
		
		return page;
	}
	
	public SchoolVO selcetOneSchool(String school_code) {
			
		return dao.selcetOneSchool(school_code);
	}
	
	public String insertDepart(String depart_code, String school_code, String depart_name) {
		String page = "redirect:/manager/successfulPage";
		HashMap<String, String> hashmap = new HashMap<String, String>();
		
		hashmap.put("depart_code", depart_code);
		hashmap.put("school_code", school_code);
		hashmap.put("depart_name", depart_name);
		
		if(dao.insertDepart(hashmap) == 0) page = "redirect:/manager/failPage";
		
		return page;
	}
}
