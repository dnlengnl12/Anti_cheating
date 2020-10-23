package com.dyung.kim.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dyung.kim.dao.ManagerDAO;
import com.dyung.kim.vo.SchoolVO;

@Service
public class ManagerService {
	@Autowired
	private ManagerDAO dao;
	
	public String insertSchool(SchoolVO school) {
		String page = "/manager/successfulPage";
		
		if(dao.insertSchool(school) == 0) page = "/manager/failPage";
		
		return page;
	}
	
	
	
	
}
