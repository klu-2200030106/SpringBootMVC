package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.EmployeeRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private EmployeeRepository employeeRepository;

	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private CustomerRepository customerRepository;
	
	@Override
	public List<Employee> ViewAllEmployees() {
		return employeeRepository.findAll();
	}

	@Override
	public Admin checkadminLogin(String uname, String pwd) {
		
		return adminRepository.checkAdminLogin(uname, pwd);
	}

	@Override
	public String deleteemp(int eid) {
		  employeeRepository.deleteById(eid);
		  return "Employee Deleted Sucessfully";
	}

	@Override
	public Employee displayempbyId(int eid) {
		// TODO Auto-generated method stub
		return employeeRepository.findById(eid).get();
	}

	@Override
	public long empcount() {
		// TODO Auto-generated method stub
		return employeeRepository.count();
	}

	@Override
	public String updateempstatus(String status, int eid) {
		// TODO Auto-generated method stub
		int n= employeeRepository.updateempstatus(status, eid);
		if(n>0)
		{
		return "Employee Updated Sucessfully";
		}
		else
		{
			return "Employee Not Found";
		}
	}

	@Override
	public String addcustomer(Customer c) {
		customerRepository.save(c);
		return "Customer Added Sucessfully";
	}
   
	
	
	
}
