package com.chainsys.parceltracker.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.parceltracker.dao.CustomerRepository;
import com.chainsys.parceltracker.model.Customer;

@Service
public class CustomerService {
	@Autowired
	private CustomerRepository customerRepo;
	
	

	public Customer insertCustomer(Customer cus) {
		return customerRepo.save(cus);
	}
	
	public Customer updateCustomer(Customer cus) {
		return customerRepo.save(cus);
	}

	public Customer retriveDetails(int id) {
		return customerRepo.findById(id);
	}

	public Customer getCustomerByEmailAndPassword(String email, String password) {
		return customerRepo.findByEmailAndPassword(email, password);
	}
	
	

	
}
