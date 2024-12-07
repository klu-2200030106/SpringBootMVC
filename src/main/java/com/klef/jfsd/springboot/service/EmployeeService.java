package com.klef.jfsd.springboot.service;
import java.util.List;

import com.klef.jfsd.springboot.model.Employee;

public interface EmployeeService 
{
    public String EmployeeRegistration(Employee e);
    public Employee checkemployeeLogin(String email,String pwd);
    public Employee displayEmployeeByID(int eid);
    public String UpdateEmployeeProfile(Employee emp);
    
    public List<Employee> displayEmployeesByDept(String dept);
    
}