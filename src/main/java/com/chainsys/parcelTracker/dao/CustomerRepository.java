package com.chainsys.parcelTracker.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.parcelTracker.pojo.Customer;


public interface CustomerRepository  extends CrudRepository<Customer, Integer>{
	Customer findById(int id);

	Customer save(Customer dr); 

	void deleteById(int id);

	List<Customer> findAll();
}
