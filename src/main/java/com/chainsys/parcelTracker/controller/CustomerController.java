package com.chainsys.parcelTracker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.parcelTracker.dto.CustomerCourierDTO;
import com.chainsys.parcelTracker.model.Customer;
import com.chainsys.parcelTracker.model.Employee;
import com.chainsys.parcelTracker.service.CourierService;
import com.chainsys.parcelTracker.service.CustomerService;
import com.chainsys.parcelTracker.service.EmployeeService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	CustomerService customerService;


	@GetMapping("/signupform")
	public String showCustomerForm(Model model) {
		Customer theCus = new Customer();
		model.addAttribute("newcus", theCus);
		return "signup-form";
	}

	@PostMapping("/newcustomer")
	public String addNewCus(@ModelAttribute("newcus") Customer theCus) {
		customerService.insertCustomer(theCus);

		return "redirect:/customer/customerlogin";
	}

	@GetMapping("/customerlogin")
	public String adminaccessform(Model model) {
		Customer theCus = new Customer();
		model.addAttribute("customer", theCus);
		return "customer-login-form";
	}

	@PostMapping("/checkcustomerlogin")
	public String checkingAccess(@ModelAttribute("customer") Customer cus) {
		Customer customer = customerService.getCustomerByNameAndPassword(cus.getCustomerName(), cus.getPassword());
		if (customer != null) {

			return "redirect:/customer/gototrackandregister";
		} else
			return "invalid-customer-error";

	}

	@GetMapping("/gototrackandregister")
	public String goToTrackAndRegisterForm() {
		return "courier-register-and-track";
	}

	@GetMapping("/couriersendbyyou")
	public String goToOneCourierCustomerForm() {
		return "onecustomer-courier-form";
	}

}
