package com.chainsys.parcelTracker.controller;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.parcelTracker.dao.CourierRepository;
import com.chainsys.parcelTracker.dao.CustomerRepository;
import com.chainsys.parcelTracker.dto.CustomerCourierDTO;
import com.chainsys.parcelTracker.model.Courier;
import com.chainsys.parcelTracker.model.Customer;
import com.chainsys.parcelTracker.service.CustomerCourierService;
import com.chainsys.parcelTracker.service.CustomerService;

@Controller
@RequestMapping("/customercourier")
public class CustomerCourierController {
	@Autowired
	CustomerCourierService customerCourierService;

	
	
	  @GetMapping("/getcustomercourierlist") 
	  public String getCustomerCourier(@RequestParam("customerId") int id ,Model model) {
	  CustomerCourierDTO customerCourierdto = customerCourierService.getCourierList(id);
	//  model.addAttribute("getCustomer",customerCourierdto.getCustomerById());
	  model.addAttribute("courierlist", customerCourierdto.getCourierList());
	  return "customer-courier-list"; }
	 
	 
	
	
	
}
