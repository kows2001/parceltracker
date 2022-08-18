package com.chainsys.parcelTracker.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.parcelTracker.dao.EmployeeRepository;
import com.chainsys.parcelTracker.model.Employee;
@Service
public class EmployeeService {
    @Autowired
	private EmployeeRepository employeeRepo;
	
	public Employee addEmployeeDetails(Employee emp) {
		return employeeRepo.save(emp);
	}
	
	public Employee getEmployeeRoleAndEmployeeNameAndEmployeePassword( String role,String employeeName, String password) {
		return employeeRepo.findByEmployeeRoleAndEmployeeNameAndEmployeePassword( role ,employeeName, password);
	}
	
}
