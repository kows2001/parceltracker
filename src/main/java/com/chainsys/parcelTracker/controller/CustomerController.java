package com.chainsys.parcelTracker.controller;

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

import com.chainsys.parcelTracker.model.Customer;
import com.chainsys.parcelTracker.service.CustomerService;

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
	public String checkingAccess(@ModelAttribute("customer") Customer cus , Model model) {
		Customer customer = customerService.getCustomerByEmailAndPassword(cus.getEmail(), cus.getPassword());
		
		if (customer != null) {
			return "redirect:/customer/gotodashboard?customerId="+ customer.getCustomerId();
		} else
			model.addAttribute("result","Invalid EmailId and Password!!!");
			 return  "customer-login-form";
	}

	@GetMapping("/gotodashboard")
	public String goToDashBoard(@RequestParam("customerId") int id , Model model) {
		model.addAttribute("customerId" , id);
		return "dashboard";
	}
	

	@GetMapping("/backtodashboard")
	public String backToBackDashboard() {
		return "dashboard";
	}
	
	@GetMapping("/homePage")
	public String goToHomePage() {
		return "homePage";
	}
	
	@GetMapping("/findcustomerbyid")
	public String findCustomerById(@RequestParam("customerId") int id, Model model) {
		Customer theCus = customerService.retriveDetails(id);
		model.addAttribute("findcustomerbyid", theCus);
		return "find-customer-byid";
	}
	
	  @GetMapping("/customerupdateform") 
	  public String showUpdateForm(@ModelAttribute("findcustomerbyid")Customer customer, Model model) {
		  Customer customer1 = customerService.retriveDetails(customer.getCustomerId());
	  model.addAttribute("updateCustomer", customer1); 
	  return "customer-update-form"; 
	  }
	  
	  @PostMapping("/customerupdate") 
	  public String updateStatusDetail(@ModelAttribute("updateCustomer") Customer customer, Model model) {
		  customer.setDateOfJoining();
			System.out.println("fg"+customer.getDateOfJoining());
		  customerService.updateCustomer(customer);
			model.addAttribute("save","Changes Saved Successfully....");

		 return "customer-update-form"; }
	 

}
