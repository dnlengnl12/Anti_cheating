package com.dyung.kim.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dyung.kim.vo.NoticeVO;

@Repository
public class NoticeDAO {
	@Autowired
	private SqlSession session;
	
	public int noticeWrite(NoticeVO notice) {
		NoticeMapper mapper = session.getMapper(NoticeMapper.class);
		int result = 0;
		
		try {
			result = mapper.noticeWrite(notice);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	public ArrayList<HashMap<String, Object>> noticeList(HashMap<String, Object> hashmap){
		NoticeMapper mapper = session.getMapper(NoticeMapper.class);
		ArrayList<HashMap<String,Object>> list = null;
		
		try {
			list = mapper.noticeList(hashmap);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;	
	}

	public void updateHits(int notice_seq) {
		NoticeMapper mapper = session.getMapper(NoticeMapper.class);
		
		try {
			mapper.updateHits(notice_seq);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	public HashMap<String, Object> noticeRead(int notice_seq){
		NoticeMapper mapper = session.getMapper(NoticeMapper.class);
		HashMap<String, Object> map = null;
		
		try {
			map = mapper.noticeRead(notice_seq);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return map;
	}
	
	public void noticeUpdate(NoticeVO notice) {
		NoticeMapper mapper = session.getMapper(NoticeMapper.class);
		
		try {
			mapper.noticeUpdate(notice);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public void noticeDelete(int notice_seq) {
		NoticeMapper mapper = session.getMapper(NoticeMapper.class);
		
		try {
			mapper.noticeDelete(notice_seq);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public NoticeVO noticeSelectOne(int notice_seq) {
		NoticeMapper mapper = session.getMapper(NoticeMapper.class);
		NoticeVO notice = null;
		
		try {
			notice = mapper.noticeSelectOne(notice_seq);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return notice;
	}
	
	public int noticeCount(HashMap<String, Object> hashmap) {
		NoticeMapper mapper = session.getMapper(NoticeMapper.class);
		int count = 0;
		
		try {
			count = mapper.noticeCount(hashmap);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return count;
	}
}