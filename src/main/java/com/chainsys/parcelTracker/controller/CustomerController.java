package com.chainsys.parcelTracker.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.parcelTracker.pojo.Courier;
import com.chainsys.parcelTracker.pojo.Customer;
import com.chainsys.parcelTracker.pojo.Employee;
import com.chainsys.parcelTracker.service.CourierService;
import com.chainsys.parcelTracker.service.CustomerService;
import com.chainsys.parcelTracker.service.EmployeeService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

       @Autowired
       CustomerService cusService;
       
       @Autowired
       CourierService courierservice;
       
       @Autowired
       EmployeeService empservice;
//       
//       @GetMapping("/registerform")
//		public String showRegisterForm(Model model) {
//			Customer theCus = new Customer();
//			model.addAttribute("neworder", theCus);
//			return "register-form";
//		}
//      
//   		@GetMapping("/signupform")
//		public String showCustomerForm(Model model) {
//			Customer theCus = new Customer();
//			model.addAttribute("neworder", theCus);
//			return "signup-form";
//		}
//   		
//
//		@PostMapping("/newcustomer")
//		public String addNewCus(@ModelAttribute("newcus") Customer theCus) {
//          cusService.insertCustomer(theCus);
//          
//		return null;
//		}
		@GetMapping("/registerform1")
		public String showRegisterForm1(@RequestParam("cusid") int id, Model model) {
			Customer theCus = cusService.retriveDetails(id);
			model.addAttribute("register", theCus);
			return "register-form1";}

	
		
}
