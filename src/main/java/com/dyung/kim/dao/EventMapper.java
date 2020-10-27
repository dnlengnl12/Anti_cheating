package com.dyung.kim.dao;

import java.util.ArrayList;

import com.dyung.kim.vo.EventVO;



public interface EventMapper {
	public int addEvent(EventVO event);
	public ArrayList<EventVO> fetchEvent();
	public int updateEvent(EventVO event);
	public int deleteEvent(EventVO event);
}
