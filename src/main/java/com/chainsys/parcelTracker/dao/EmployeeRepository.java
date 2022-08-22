package com.chainsys.parceltracker.dao;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.chainsys.parceltracker.model.Employee;

@Repository
public interface EmployeeRepository  extends JpaRepository<Employee, Integer>{
	
	
	Employee findById(int id);

	Employee save(Employee employee); 

	void deleteById(int id);

	List<Employee> findAll();

	Employee  findByEmployeeRoleAndEmployeeNameAndEmployeePassword(String role, String employeeName, String password);
	
}

