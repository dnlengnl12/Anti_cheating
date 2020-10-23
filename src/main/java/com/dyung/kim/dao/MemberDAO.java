package com.dyung.kim.dao;

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
}
