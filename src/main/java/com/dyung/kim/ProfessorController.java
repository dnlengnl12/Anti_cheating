package com.dyung.kim;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/professor")
public class ProfessorController {

	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String main() {
		
		return "professor/main";
	}
	
	@RequestMapping(value="/notice", method=RequestMethod.GET)
	public String notice() {
		
		return "professor/notice";
	}
	
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public String write() {
		
		return "professor/write";
	}
	
	@RequestMapping(value="/calendar", method=RequestMethod.GET)
	public String calendar() {
		
		return "professor/calendar";
	}
	
	@RequestMapping(value="/problemPaper", method=RequestMethod.GET)
	public String problemPaper() {
		
		return "professor/problemPaper";
	}
	
	@RequestMapping(value="/studentManagement", method=RequestMethod.GET)
	public String studentManagement() {
		
		return "professor/studentManagement";
	}
}
