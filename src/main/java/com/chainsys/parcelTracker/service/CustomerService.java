package com.chainsys.parcelTracker.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.parcelTracker.dao.CourierRepository;
import com.chainsys.parcelTracker.dao.CustomerRepository;
import com.chainsys.parcelTracker.dto.CustomerCourierDTO;
import com.chainsys.parcelTracker.model.Courier;
import com.chainsys.parcelTracker.model.Customer;
import com.chainsys.parcelTracker.model.Employee;

@Service
public class CustomerService {
	@Autowired
	private CustomerRepository customerRepo;
	
	

	public Customer insertCustomer(Customer cus) {
		return customerRepo.save(cus);
	}

	public Customer retriveDetails(int id) {
		return customerRepo.findById(id);
	}

	public Customer getCustomerByNameAndPassword(String name, String password) {
		return customerRepo.findByCustomerNameAndPassword(name, password);
	}

	
}
