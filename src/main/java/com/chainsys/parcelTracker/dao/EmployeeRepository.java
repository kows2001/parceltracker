package com.chainsys.parcelTracker.dao;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.parcelTracker.pojo.Customer;
import com.chainsys.parcelTracker.pojo.Employee;

@Repository
public interface EmployeeRepository  extends JpaRepository<Employee, Integer>{
//	
	
	Employee findById(int id);

	Employee save(Employee dr); 

	void deleteById(int id);

	List<Employee> findAll();
	
	@Query(value="select * from EMPLOYEE  ", nativeQuery = true)
	Employee getAdminAccess();
	
}

