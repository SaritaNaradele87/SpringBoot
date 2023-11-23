package com.cjc.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cjc.main.Service.HomeService;
import com.cjc.main.model.Student;

@Controller
public class HomeController {
	@Autowired
	HomeService hs;
	@RequestMapping("/")
	public String prelogin() {
		return "login";
		
	}
   @RequestMapping("/openpage")
   public String preregister() {
	   return "register";
   }
   
   @RequestMapping("/register")
   public String regData(@ModelAttribute Student s) {
	   hs.saveData(s);
	   return "login";
	   
   }
   @RequestMapping("/log_in")
   public String loginCheck(@RequestParam ("username") String un,@RequestParam ("password") String ps,Model m) {
	   hs.loginCheck(un,ps);
	   Iterable list=hs.displayAllData();
		m.addAttribute("data", list);
		
	   return "success";
   }
  
   @RequestMapping("/edit")
	public String getEditdata(@RequestParam int  sid,Model m) {
	Student s=hs.getEditdata(sid);
		m.addAttribute("data", s);
		return "edit";
		
	}
   @RequestMapping("/update")
   public String UpdateStudentData(@ModelAttribute Student s,Model m) {
	   hs.UpdateStudentData(s);
	   
	   Iterable list=hs.displayAllData();
	 		m.addAttribute("data", list);
	 		
	   return "success";
	   
   }
   
   public String DeleteStudentData( int sid) {
	   return "suceess";
	   
   }
}

