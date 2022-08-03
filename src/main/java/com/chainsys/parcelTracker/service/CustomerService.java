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
	@Autowired
	private CourierRepository courierRepo;
	
	
	

	public Customer insertCustomer(Customer cus) {
		return customerRepo.save(cus);
	}

	public Customer retriveDetails(int id) {
		return customerRepo.findById(id);
	}

	public Customer getCustomerAccess() {
		return customerRepo.getCustomerAccessForLogin();
	}

   public CustomerCourierDTO getCourierList(int customer_id) {
    Customer cus = retriveDetails(customer_id);
    CustomerCourierDTO dto = new CustomerCourierDTO();
    dto.setCustomer(cus);
    List<Courier> complaint = courierRepo.findByCustomerId(customer_id);
    Iterator<Courier> iterator = complaint.iterator();
    while (iterator.hasNext())
    	dto.addCourierList((Courier) iterator.next() );
    
   return dto;
}
}
 

