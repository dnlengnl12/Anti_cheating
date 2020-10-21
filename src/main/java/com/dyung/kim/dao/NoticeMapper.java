package com.dyung.kim.dao;

import java.util.ArrayList;
import java.util.HashMap;


import com.dyung.kim.vo.NoticeVO;

public interface NoticeMapper {
	public int noticeWrite(NoticeVO notice);
	
	public ArrayList<HashMap<String, Object>> noticeList(HashMap<String, Object> hashmap);
	public void updateHits(int board_no);
	public HashMap<String, Object> noticeRead(int notice_seq);
	public void noticeUpdate(NoticeVO notice);
	public void noticeDelete(int notice_seq);

	public NoticeVO noticeSelectOne(int notice_seq);
	public int noticeCount(HashMap<String, Object> hashmap);
}