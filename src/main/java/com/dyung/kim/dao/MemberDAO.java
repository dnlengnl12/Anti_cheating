package com.dyung.kim.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.GetMapping;

import com.dyung.kim.vo.MemberVO;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSession session;
	
	public int insertMember(MemberVO member) {
		int cnt=0;
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		
		try {
			cnt = mapper.insertMember(member);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}
	
	public String selectId(String member_id) {
		String acc_id = "";
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		
		try {
			
			acc_id = mapper.selectId(member_id);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return acc_id;
	}
	
	public ArrayList<String> selectSchoolName(String school_name) {
		ArrayList<String> list = null;
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		
		try {
			list = mapper.selectSchoolName(school_name);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public String selectSchoolCode(String school_name) {
		String school_code = null;
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		
		try {
			school_code = mapper.selectSchoolCode(school_name);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return school_code;
	}
	
	public ArrayList<String> selectDepartName(String school_code) {
		ArrayList<String> list = null;
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		
		try {
			list = mapper.selectDepartName(school_code);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
