package com.dyung.kim;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dyung.kim.service.ManagerService;
import com.dyung.kim.vo.SchoolVO;

@Controller
@RequestMapping(value="/manager")
public class ManagerController {
	@Autowired
	private ManagerService ms;
	
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String main() {
		
		return "manager/main";
	}
	
	@RequestMapping(value="/school", method=RequestMethod.GET)
	public String school(SchoolVO school) {
		
		return ms.insertSchool(school);
	}
	
	@RequestMapping(value="/successfulPage", method=RequestMethod.GET)
	public String successfulPage() {
		
		return "manager/successfulPage";
	}
	
	@RequestMapping(value="failPage", method=RequestMethod.GET)
	public String failPage() {
		
		return "manager/failPage";
	}
	
	@RequestMapping(value="/departMain", method=RequestMethod.GET)
	public String departMain() {
		
		return "manager/departMain";
	}
	
	@RequestMapping(value="/schoolSearch", method=RequestMethod.GET)
	public String schoolSearch(String school_code, Model model) {
		SchoolVO school = ms.selcetOneSchool(school_code);
		
		if(school == null) return "redirect:/manager/failPage";
		else {
			model.addAttribute("school", school);
			return "manager/departAdd";
		}
	}
	
	@RequestMapping(value="/departAdd", method=RequestMethod.GET)
	public String departAdd(String school_code, Model model) {
		SchoolVO school = ms.selcetOneSchool(school_code);
		model.addAttribute("school", school);
		
		return "manager/departAdd";
	}
	
	@RequestMapping(value="/depart", method=RequestMethod.GET)
	public String depart(String depart_code, String school_code, String depart_name) {
		//System.out.println("1");
		return ms.insertDepart(depart_code, school_code, depart_name);
	}
}
