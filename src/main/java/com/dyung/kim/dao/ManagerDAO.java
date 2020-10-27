package com.dyung.kim.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dyung.kim.vo.SchoolVO;

@Repository
public class ManagerDAO {
	@Autowired
	private SqlSession session;
	
	public int insertSchool(SchoolVO school) {
		ManagerMapper mapper = session.getMapper(ManagerMapper.class);
		int result = 0;
		
		try {
			result = mapper.insertSchool(school);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	

	public SchoolVO selcetOneSchool(String school_code) {
		ManagerMapper mapper = session.getMapper(ManagerMapper.class);
		SchoolVO school = null;
		
		try {
			school = mapper.selcetOneSchool(school_code);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return school;
	}

	public int insertDepart(HashMap<String, String> hashmap) {
		ManagerMapper mapper = session.getMapper(ManagerMapper.class);
		int result = 0;
		
		try {
			result = mapper.insertDepart(hashmap);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
