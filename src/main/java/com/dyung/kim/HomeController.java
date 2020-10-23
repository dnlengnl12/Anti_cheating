package com.dyung.kim;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dyung.kim.service.MemberService;

import com.dyung.kim.vo.MemberVO;

@Controller
public class HomeController {
		
	@Autowired
	private MemberService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "index";
	}
	
	@RequestMapping(value="/agree", method = RequestMethod.GET)
	public String agree() {
		return "agreePage";
	}
	
	@RequestMapping(value ="/joinForm", method = RequestMethod.POST)
	public String joinForm() {
		return "joinForm";
	}
	
	@RequestMapping(value ="/search", method = RequestMethod.GET)
	public String search() {
		return "searchIdpass";
	}
	
	@RequestMapping(value ="/searchSchool", method = RequestMethod.GET)
	public String searchSchool() {
		return "searchSchool";
	}
	
	@RequestMapping(value ="/join", method = RequestMethod.POST)
	public String join(MemberVO member) {
		return service.insertMember(member);
	}
/*	
	@RequestMapping(value="/elements", method=RequestMethod.GET)
	public String elements() {
		return "elements";
	}
	
	@RequestMapping(value="/generic", method=RequestMethod.GET)
	public String generic() {
		return "generic";
	}
*/
}
