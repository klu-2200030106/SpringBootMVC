package com.klef.jfsd.springboot.controller;

import java.util.List;
import java.util.NoSuchElementException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController 
{
  @Autowired
  private AdminService adminService;
  
  @GetMapping("adminlogin")
     public ModelAndView adminlogin()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("adminlogin");
       return mv;
     }
     
     @GetMapping("viewallemps")
     public ModelAndView viewallemps()
     {
       ModelAndView mv = new ModelAndView();
       List<Employee> emplist = adminService.ViewAllEmployees();
       mv.setViewName("viewallemps");
       
       long count= adminService.empcount();
       mv.addObject("count",count);
       mv.addObject("emplist",emplist);
       return mv;
     }
     
     @GetMapping("deleteemp")
     public ModelAndView deleteemp()
     {
       ModelAndView mv = new ModelAndView();
       List<Employee> emplist = adminService.ViewAllEmployees();
       mv.setViewName("deleteemp");
       mv.addObject("emplist",emplist);
       return mv;
     }
     
     @GetMapping("delete")
     public String deleteoperation(@RequestParam("id") int eid)
     {
    	 adminService.deleteemp(eid);
    	 
    	 return "redirect:/deleteemp";
     }
     
     
     @PostMapping("checkadminlogin")
     //@ResponseBody
     public ModelAndView checkadminLogin(HttpServletRequest request)
     {
    	 String username= request.getParameter("auname");
    	 String password = request.getParameter("apwd");
    	 
    	 ModelAndView mv=new ModelAndView();
    	 
    	Admin admin = adminService.checkadminLogin(username, password);
    	
    	if(admin!=null)
    	{
//    		return  "Admin Login Sucess";
    		mv.setViewName("adminhome");
    	}
    	
    	else
    	{
//    		return "Admin Login Failed";
    		mv.setViewName("adminloginfail");
    		mv.addObject("message","Login Failed");
    	}
    	
    	long count= adminService.empcount();
        mv.addObject("count",count);
    	 
    	return mv;
    	
     }
     
     
     @GetMapping("adminhome")
     public ModelAndView adminhome()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("adminhome");
       
       long count= adminService.empcount();
       mv.addObject("count",count);
       
       
       return mv;
     }
     
     
     @GetMapping("adminlogout")
     public ModelAndView adminlogout()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("adminlogin");
       return mv;
     }
     
     @GetMapping("updateempstatus")
     public ModelAndView updateempstatus()
     {
       ModelAndView mv = new ModelAndView();
       List<Employee> emplist = adminService.ViewAllEmployees();
       mv.setViewName("updateempstatus");
       mv.addObject("emplist",emplist);
       return mv;
     }
     
     @GetMapping("updatestatus")
     public String updatestatus(@RequestParam("id") int eid,@RequestParam("status") String status)
     {
      adminService.updateempstatus(status, eid);
      return "redirect:/updateempstatus";
       
     }
     
     
   
     @GetMapping("addcustomer")
     public String addcustomer(Model m)
     {
       m.addAttribute("customer", new Customer());
       return "addcustomer"; //addcustomer.jsp
     }
     
     @PostMapping("insertcustomer")
     public ModelAndView insertcustomer(@ModelAttribute("customer") Customer c) {
         ModelAndView mv = new ModelAndView();

         try {
             String msg = adminService.addcustomer(c);
             mv.setViewName("customersuccess");
             mv.addObject("message", msg);
         } catch (DataIntegrityViolationException e) {
             // Handle duplicate entry
             mv.setViewName("customerfail");
             mv.addObject("error", "Duplicate entry. Customer with this information already exists.");
         } catch (Exception e) {
             // Handle other invalid entries or unexpected errors
             mv.setViewName("customerfail");
             mv.addObject("error", "Invalid entry. Please check your input and try again.");
         }

         return mv;
     }
     
     @GetMapping("viewempbyid")
     public ModelAndView viewempbyid()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("viewempbyid");
       return mv;
     }
     
     
     
     
     @GetMapping("viewempid")
     public ModelAndView viewempbyid(@RequestParam("id") int eid) {
         ModelAndView mv = new ModelAndView();
         
         try {
             Employee emp = adminService.displayempbyId(eid);
             mv.setViewName("viewempbyid");
             mv.addObject("employee", emp);  // Pass employee data to the view
         } catch (NoSuchElementException e) {
             mv.setViewName("viewempbyid");
             mv.addObject("message", "Employee with ID " + eid + " not found.");
         }
         
         return mv;
     }

     
}