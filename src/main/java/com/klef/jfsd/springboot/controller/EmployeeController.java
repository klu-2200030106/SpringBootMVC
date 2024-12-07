package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.service.EmployeeService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class EmployeeController 
{
	@Autowired
	private EmployeeService employeeService;
	
	
   @GetMapping("/")
   public ModelAndView home()
   {
	   ModelAndView mv=new ModelAndView();
	   mv.setViewName("home");
	   return mv;
   }
   @GetMapping("empreg")
   public ModelAndView empreg()
   {
	   ModelAndView mv=new ModelAndView();
	   mv.setViewName("empreg");
	   return mv;
   }
   @GetMapping("emplogin")
   public ModelAndView emplogin()
   {
	   ModelAndView mv=new ModelAndView();
	   mv.setViewName("emplogin");
	   return mv;
   }
   @PostMapping("insertemp")
   public ModelAndView insertemp(HttpServletRequest request)
   {
      String name = request.getParameter("ename");
    String gender = request.getParameter("egender");
    String dob = request.getParameter("edob");
    String dept = request.getParameter("edept");
    double salary = Double.parseDouble(request.getParameter("esalary"));
    String location = request.getParameter("elocation");
    String email = request.getParameter("eemail");
    String password = request.getParameter("epwd");
    String contact = request.getParameter("econtact");
    String status = "Registered";
    
      Employee emp = new Employee();
      emp.setName(name);
      emp.setGender(gender);
      emp.setDepartment(dept);
      emp.setDateofbirth(dob);
      emp.setSalary(salary);
      emp.setLocation(location);
      emp.setEmail(email);
      emp.setPassword(password);
      emp.setContact(contact);
      emp.setStatus(status);
      
      String msg = employeeService.EmployeeRegistration(emp);
      
      ModelAndView mv = new ModelAndView("regsuccess");
      mv.addObject("message", msg);
    
      return mv;

   }
   
   @PostMapping("checkemplogin")
   @ResponseBody
   public ModelAndView checkemplogin(HttpServletRequest request) {
       ModelAndView mv = new ModelAndView();

       String email = request.getParameter("eemail");
       String password = request.getParameter("epwd");

       Employee emp = employeeService.checkemployeeLogin(email, password);

       if (emp != null && "Accepted".equalsIgnoreCase(emp.getStatus())) {
           // Session handling
           HttpSession session = request.getSession();
           session.setAttribute("employee", emp); // "employee" is the session variable

           mv.setViewName("emphome");
       } else {
           mv.setViewName("emplogin");
           if (emp == null) {
               mv.addObject("message", "Login Failed: Invalid email or password.");
           } else {
               mv.addObject("message", "Login Failed: Your status is " + emp.getStatus() + ". Please contact admin.");
           }
       }

       return mv;
   }

   
   @GetMapping("emphome")
   public ModelAndView adminhome()
   {
     ModelAndView mv = new ModelAndView();
     mv.setViewName("emphome");
     return mv;
   }
   
   @GetMapping("empprofile")
   public ModelAndView empprofile()
   {
     ModelAndView mv = new ModelAndView();
     mv.setViewName("empprofile");
     return mv;
   }
   
   @GetMapping("empcontactus")
   public ModelAndView empcontactus()
   {
     ModelAndView mv = new ModelAndView();
     mv.setViewName("empcontactus");
     return mv;
   }
   
   
   @GetMapping("emplogout")
   public ModelAndView adminlogout(HttpServletRequest request)
   {
	  HttpSession session= request.getSession();
	   
	  session.removeAttribute("employee"); // employee is session variable
	  
	  
	   
     ModelAndView mv = new ModelAndView();
     mv.setViewName("emplogin");
     return mv;
   }
   
   @GetMapping("updateemp")
   public ModelAndView updateemp() {
     ModelAndView mv = new ModelAndView("updateemp");
     return mv;
   }
   
   
   
   @PostMapping("updateempprofile")
   public ModelAndView updateempprofile(HttpServletRequest request)
   {
     ModelAndView mv = new ModelAndView();
     
    try
    {
        int id = Integer.parseInt(request.getParameter("eid"));
        String name = request.getParameter("ename");
      String gender = request.getParameter("egender");
      String dob = request.getParameter("edob");
      String dept = request.getParameter("edept");
      double salary = Double.parseDouble(request.getParameter("esalary"));
      String password = request.getParameter("epwd");
      String location = request.getParameter("elocation");
      String contact = request.getParameter("econtact");
      
        Employee emp = new Employee();
        emp.setId(id);
        emp.setName(name);
        emp.setGender(gender);
        emp.setDepartment(dept);
        emp.setDateofbirth(dob);
        emp.setSalary(salary);
        emp.setPassword(password);
        emp.setLocation(location);
        emp.setContact(contact);
        
        String msg = employeeService.UpdateEmployeeProfile(emp);
        
        Employee e = employeeService.displayEmployeeByID(id);
        
         HttpSession session = request.getSession();
         session.setAttribute("employee",e); //employee is session variable
        
       
        mv.setViewName("updatesuccess");
        mv.addObject("message", msg);
      
    }
    catch(Exception e)
    {
      mv.setViewName("updateerror");
      mv.addObject("message", e);
    }
      return mv;
   }
   
   @GetMapping("empsessionexpiry")
   public ModelAndView empsessionexpiry()
   {
	   ModelAndView mv=new ModelAndView();
	   mv.setViewName("empsessionexpiry");
	   return mv;
   }
   
   @GetMapping("viewempbydept")
   public ModelAndView viewempbydept(HttpServletRequest request)
   {
	   ModelAndView mv=new ModelAndView();
	   mv.setViewName("viewempbydept");
	   
	   HttpSession session=request.getSession();
	   
	   Employee emp=(Employee)session.getAttribute("employee");
	   
	  List<Employee> emplist = employeeService.displayEmployeesByDept(emp.getDepartment());
	   
	   mv.addObject("emplist",emplist);
	   
	   return mv;
   }
   
   
   
   
   
}
