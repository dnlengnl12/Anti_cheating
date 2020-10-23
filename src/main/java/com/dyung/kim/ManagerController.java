package com.dyung.kim;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/manager")
public class ManagerController {
	
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String main() {
		
		return "manager/main";
	}
}
