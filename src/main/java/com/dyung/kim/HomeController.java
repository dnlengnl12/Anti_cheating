package com.dyung.kim;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@ResponseBody
	@RequestMapping(value="/idCheck", method=RequestMethod.POST, produces="application/text; charset=utf8")
	public String idCheck(String member_id) {
		String dataCheck = service.selectId(member_id);
		String data = "";
		if(dataCheck != null) {
			data = "0";
		} else {
			data = "1";
		}
		return data;
	}
	
	@ResponseBody
	@RequestMapping(value="/searchSchoolName", method=RequestMethod.GET)
	public ArrayList<String> searchSchoolName(String school_name) {
		ArrayList<String> list = service.selectSchoolName(school_name);
		return list;
	}
	
	@ResponseBody
	@RequestMapping(value="/searchDepartName", method=RequestMethod.GET)
	public ArrayList<String> searchDepartName(String school_name){
		System.out.println(school_name);
		ArrayList<String> list = service.selectDepartName(school_name);
		System.out.println(list.toString());
		return list;
	}
	
	@RequestMapping(value="/joinFormToSelectSchool", method=RequestMethod.GET)
	public String joinFormToSelectSchool(String school_name, String depart_name) {
		System.out.println(school_name);
		System.out.println(depart_name);
		return null;
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
