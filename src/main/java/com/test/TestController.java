package com.test;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/test")
public class TestController {
	@Autowired
	HelloService helloService;
	
	@RequestMapping(value = "hi", method = RequestMethod.GET)
	public String hello(Model m) {
		m.addAttribute("ttt", helloService.hello("90"));
		return "hello";
	}

	@RequestMapping(value = "hi", method = RequestMethod.POST, headers = "Accept=application/json")
	public @ResponseBody Map<String, Object> hello(@RequestParam("name") String name) {
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("hi", "Spring");
		result.put("name", name);
		return result;
	}

	@RequestMapping(value = "/")
	public String index() {
		return "index";
	}
}
