package com.chainsys.parcelTracker.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

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
	public String addNewCus(@Valid @ModelAttribute("newcus") Customer theCus, Errors error) {
		if(error.hasErrors()) {
			
           return "signup-form";
		}
		else {
			//theCus.setDateOfJoining();
			customerService.insertCustomer(theCus);
			return "redirect:/customer/customerlogin";
		}
	
	}

	@GetMapping("/customerlogin")
	public String adminaccessform(Model model) {
		Customer theCus = new Customer();
		model.addAttribute("customer", theCus);
		return "customer-login-form";
	}
     
	
	
	@PostMapping("/checkcustomerlogin")
	public String checkingAccess(@ModelAttribute("customer") Customer cus ) {
		Customer customer = customerService.getCustomerByEmailAndPassword(cus.getEmail(), cus.getPassword());
		
		if (customer != null) {
			System.out.println("debug: sign in "+customer.getCustomerId() );
			return "redirect:/customer/gotodashboard?customerId="+ customer.getCustomerId();
		} else
			return "invalid-customer-error";

	}

	@GetMapping("/gotodashboard")
	public String goToTrackAndRegisterForm(@RequestParam("customerId") int id , Model model) {
		model.addAttribute("customerId" , id);
		return "dashboard";
	}

	
	@GetMapping("/homePage")
	public String goToHomePage() {
		return "homePage";
	}

}
