package com.dyung.kim.dao;

import java.util.ArrayList;

import com.dyung.kim.vo.MemberVO;

public interface MemberMapper {
	public int insertMember(MemberVO member);
	public String selectId(String member_id);
	public ArrayList<String> selectSchoolName(String school_name);
	public ArrayList<String> selectDepartName(String school_code);
	public String selectSchoolCode(String school_name);
}
