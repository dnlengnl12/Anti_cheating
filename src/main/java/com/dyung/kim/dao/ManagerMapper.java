package com.dyung.kim.dao;

import java.util.HashMap;

import com.dyung.kim.vo.SchoolVO;

public interface ManagerMapper {

	public int insertSchool(SchoolVO school);
	public SchoolVO selcetOneSchool(String school_code);
	public int insertDepart(HashMap<String, String> hashmap);
}
