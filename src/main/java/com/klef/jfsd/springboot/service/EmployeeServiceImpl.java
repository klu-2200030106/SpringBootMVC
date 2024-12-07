package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.repository.EmployeeRepository;

@Service
public class EmployeeServiceImpl implements EmployeeService
{
   @Autowired
   private EmployeeRepository employeeRepository;

@Override
public String EmployeeRegistration(Employee e) {
	employeeRepository.save(e);
	return "Employee Registered Sucessfully";
}

@Override
public Employee checkemployeeLogin(String email, String pwd) {
	// TODO Auto-generated method stub
	return employeeRepository.checkEmployeeLogin(email, pwd);
}

@Override
public Employee displayEmployeeByID(int eid) {
	return employeeRepository.findById(eid).get();
}

@Override
public String UpdateEmployeeProfile(Employee emp) {
Employee e = employeeRepository.findById(emp.getId()).get();
    
    e.setContact(emp.getContact());
    e.setDateofbirth(emp.getDateofbirth());
    e.setDepartment(emp.getDepartment());
    e.setGender(emp.getGender());
    e.setLocation(emp.getLocation());
    e.setName(emp.getName());
    e.setPassword(emp.getPassword());
    e.setSalary(emp.getSalary());
    
    employeeRepository.save(e);
    
    return "Employee Updated Successfully";
}

@Override
public List<Employee> displayEmployeesByDept(String dept) {
	// TODO Auto-generated method stub
	return employeeRepository.findByDepartment(dept);
}





   

}
