package com.dyung.kim;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
		
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "index";
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
