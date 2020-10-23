package com.dyung.kim;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/manage")
public class ManageController {
	
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String main() {
		
		return "manage/main";
	}
}
