package com.chainsys.parcelTracker.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.chainsys.parcelTracker.model.Customer;

@Repository
public interface CustomerRepository  extends JpaRepository<Customer, Integer >{
//	
	
	
	Customer findById(int id);

	Customer save(Customer customer); 

	void deleteById(int id);

	List<Customer> findAll();
	
	Customer findByEmailAndPassword( String email, String password);
	
	/* Integer findCustomerIdByPhoneNumber(long phno); */
}
	
