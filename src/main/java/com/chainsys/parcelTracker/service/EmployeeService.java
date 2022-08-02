package com.chainsys.parcelTracker.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.parcelTracker.dao.CourierRepository;
import com.chainsys.parcelTracker.dao.EmployeeRepository;
import com.chainsys.parcelTracker.model.Courier;
import com.chainsys.parcelTracker.model.Employee;
@Service
public class EmployeeService {
    @Autowired
	private EmployeeRepository repo;
	
	public Employee addEmployeeDetails(Employee emp) {
		return repo.save(emp);
	}
	
	public Employee getAdminAccess() {
		return repo.getAdminAccess();
	}
}
