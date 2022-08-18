package com.chainsys.parcelTracker.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.chainsys.parcelTracker.model.Customer;
import com.chainsys.parcelTracker.model.Employee;

@Repository
public interface EmployeeRepository  extends JpaRepository<Employee, Integer>{
//	
	
	Employee findById(int id);

	Employee save(Employee employee); 

	void deleteById(int id);

	List<Employee> findAll();

	Employee  findByEmployeeRoleAndEmployeeNameAndEmployeePassword(String role, String employeeName, String password);
	
}

