package com.dyung.kim.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dyung.kim.dao.EventDAO;
import com.dyung.kim.vo.EventVO;




@Service
public class EventService {
	
	@Autowired
	private EventDAO dao;
	
	@Autowired
	private HttpSession session;
	
	public String addEvent(EventVO event) {
		
		
		event.setMember_id("no");
		dao.addEvent(event);
	
		String page = "redirect:/event/fetchEvent";
		
		return page;
	}
	
	public ArrayList<EventVO> fetchEvent(){
		ArrayList<EventVO> list = dao.fetchEvent();
		
		return list;
		
	}
	public String updateEvent(EventVO event) {
		dao.updateEvent(event);
		String page = "redirect:/event/fetchEvent";
		
		return page;
	}
	
	public String deleteEvent(EventVO event) {
		dao.deleteEvent(event);
		String page = "redirect:/event/fetchEvent";
		
		return page;
	}
	
}
