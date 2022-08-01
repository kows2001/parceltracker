package com.chainsys.parcelTracker.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.parcelTracker.dao.CustomerRepository;
import com.chainsys.parcelTracker.pojo.Customer;
@Service
public class CustomerService {
@Autowired 
private CustomerRepository repo;

public Customer insertCustomer(Customer cus) {
	return repo.save(cus);
}
public Customer retriveDetails(int id) {
	return repo.findById(id);
}
//public Customer retrivespecificdetails(int id) {
//	return repo.findBySelectedId(id);
//}
}



