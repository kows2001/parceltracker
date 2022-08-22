package com.chainsys.parceltracker.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.parceltracker.dao.CourierRepository;
import com.chainsys.parceltracker.dao.CustomerRepository;
import com.chainsys.parceltracker.dto.CustomerCourierDTO;
import com.chainsys.parceltracker.model.Courier;
import com.chainsys.parceltracker.model.Customer;
@Service
public class CustomerCourierService {
	
	@Autowired
	CustomerRepository customerRepo ;
	@Autowired
	CourierRepository courierRepo;
	
	public CustomerCourierDTO getCourierList(int customerId) {
		Customer cus = customerRepo.findById(customerId);
		CustomerCourierDTO dto = new CustomerCourierDTO();
		dto.setCustomer(cus);
		List<Courier> courier = courierRepo.findByCustomerId(customerId);
		Iterator<Courier> iterator = courier.iterator();
		while (iterator.hasNext())
			dto.addCourierList( iterator.next());

		return dto;
	}
	
}
