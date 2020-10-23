package com.dyung.kim;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	
	@RequestMapping(value="/departMain", method=RequestMethod.GET)
	public String departMain() {
		
		return "manager/departMain";
	}
}
