package com.chainsys.parcelTracker.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.parcelTracker.dao.CourierRepository;
import com.chainsys.parcelTracker.dao.CustomerRepository;
import com.chainsys.parcelTracker.dto.CustomerCourierDTO;
import com.chainsys.parcelTracker.model.Courier;
import com.chainsys.parcelTracker.model.Customer;
@Service
public class CustomerCourierService {
	
	@Autowired
	CustomerRepository customerRepo ;
	@Autowired
	CourierRepository courierRepo;
	
	public CustomerCourierDTO getCourierList(int customer_id) {
		Customer cus = customerRepo.findById(customer_id);
		CustomerCourierDTO dto = new CustomerCourierDTO();
		dto.setCustomer(cus);
		List<Courier> courier = courierRepo.findByCustomerId(customer_id);
		Iterator<Courier> iterator = courier.iterator();
		while (iterator.hasNext())
			dto.addCourierList((Courier) iterator.next());

		return dto;
	}
}
