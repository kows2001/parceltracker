package com.chainsys.parcelTracker.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.parcelTracker.pojo.Courier;
import com.chainsys.parcelTracker.pojo.Customer;
import com.chainsys.parcelTracker.service.CourierService;
import com.chainsys.parcelTracker.service.CustomerService;
@Controller
@RequestMapping("/customer")
public class CustomerController {

       @Autowired
       CustomerService cusService;
       @Autowired
       CourierService coService;

   		@GetMapping("/registerform")
		public String showRegisterForm(Model model) {
			Customer theCus = new Customer();
			model.addAttribute("neworder", theCus);
			return "registration-form";
		}

		@PostMapping("/neworder")
		public String addNewOrder(@ModelAttribute("neworder") Customer theCus, Courier courier) {
          cusService.insertCustomer(theCus);
          coService.addCourierDetails(courier);
          
		return null;
		}
       
	
}
