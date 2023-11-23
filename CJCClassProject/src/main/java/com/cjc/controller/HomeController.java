package com.cjc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cjc.model.Student;
import com.cjc.model.Admin;
import com.cjc.servicei.ServiceI;
@Controller
public class HomeController {
	
	@Autowired
	ServiceI si;
	
 @RequestMapping("/")
 public String homepage() {
	 System.out.println("Home page is start");
	    return "Home";
    }
 @RequestMapping("/regpagehere")
	public String homeregPage() {
		
		return "Admin Registration";
	}
 @RequestMapping("/Contacthere")
    public String contactPage() {
 
	 System.out.println("Contact Page Is start");
	    return "Contact" ;
   }
 @RequestMapping("/loginhere")
 public String loginPage() {
	 System.out.println("login Page Is Start");
	   return "login";
 }
 @RequestMapping("/aboutushere")
 public String aboutPage() {
	 System.out.println("about page is Start");
	 return "about us";
 }
 @RequestMapping("/newregisterhere")
 public String newregisterPage() {
	 System.out.println("New registration page is Start");
	 return "register";

 }
 @RequestMapping("/studetails")
 public String studetailsPage(Model m) {
	 System.out.println("New registration page is Start");
	 Iterable list=si.displayAllData();
		System.out.println(list);
		m.addAttribute("data",list);
	 return "StudentDetails";

 }
 
 @RequestMapping("/saveAdmin")
	public String saveAdmin(@ModelAttribute Admin ad) {
		si.saveAdmin(ad);
		return "Home";
	
 }
 @RequestMapping("/saveStudent")
	public String saveStudent(@ModelAttribute Student st) {
		si.saveStudent(st);
		return "AdminPanel";
	
}
 

 @RequestMapping("/login")
	public String loginCheck(@RequestParam("userName") String un,@RequestParam("password") String ps,Model m ) {

	 List<Admin> authAdmins = si.loginCheck(un,ps);
	 if(authAdmins.isEmpty())
	 {
		return "login"; 
	 }else {	
		return "AdminPanel";
	 }
	}

 @RequestMapping("/edit")
	public String updateStudent(@RequestParam int sid,Model m) {
		Student s= si.updateStudent(sid);
		m.addAttribute("data",s);
		return "edit";
		
	}
	@RequestMapping("/update")
	public String updateStudent(@ModelAttribute Student st,Model m )
	{
		si.updateStudent(st);
		Iterable list=si.displayAllData();
		m.addAttribute("data", list);
		return "StudentDetails";
		
	}
	@RequestMapping("/delete")
	public String deleteStudent(@RequestParam int sid , Model m) {
		si.deleteStudent(sid);
		Iterable list=si.displayAllData();
		m.addAttribute("data", list);
		return "StudentDetails";
		
	}
   @RequestMapping("search")
   public String onSearchStudent(@RequestParam String firstName, Model m){
	   
	 List<Student> searchResult=  si.serachStudentsByName(firstName);
	 if(searchResult.size()>0)
	 {
	 m.addAttribute("data", searchResult);
	 }
	 else {
    m.addAttribute("msg","We Don't Have Any Student With Name "+firstName); 
	 }
	 return "StudentDetails";
   }
   @RequestMapping("/back")
   public String onBack()
   {
	   return "AdminPanel";
   }

 	

}
