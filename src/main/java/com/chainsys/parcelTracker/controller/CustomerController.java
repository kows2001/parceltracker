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

	@Autowired
	CourierService courierservice;

	@Autowired
	EmployeeService empservice;
	
	

//       @GetMapping("/registerform")
//		public String showRegisterForm(Model model) {
//			Customer theCus = new Customer();
//			model.addAttribute("neworder", theCus);
//			return "register-form";
//		}

	@GetMapping("/signupform")
	public String showCustomerForm(Model model) {
		Customer theCus = new Customer();
		model.addAttribute("newcus", theCus);
		return "signup-form";
	}

	@PostMapping("/newcustomer")
	public String addNewCus(@ModelAttribute("newcus") Customer theCus) {
		customerService.insertCustomer(theCus);

		return null;
	}

	@GetMapping("/registerform1")
	public String showRegisterForm1(@RequestParam("cusid") int id, Model model) {
		Customer theCus = customerService.retriveDetails(id);
		model.addAttribute("register", theCus);
		return "register-form1";
	}

	@GetMapping("/customerlogin")
	public String adminaccessform(Model model) {
		Customer theCus = new Customer();
		model.addAttribute("customer", theCus);
		return "customer-login-form";
	}

	@PostMapping("/checkcustomerlogin")
	public String checkingAccess(@ModelAttribute("customer") Customer cus) {
//		Customer customerAccess = customerService.getCustomerAccess();
//		if ((customerAccess.getCustomerName().equals(cus.getCustomerName()))
//					&& (customerAccess.getPassword()
//					.equals(cus.getPassword()))){
//
//			return "redirect:/customer/gototrackandregister";
//		} else
//			return null;
		
		if ((("ammu").equals(cus.getCustomerName()))
				&& (("ammu2001")
				.equals(cus.getPassword()))){

		return "redirect:/customer/gototrackandregister";
	} else
		return null;
		

	}
	
	@GetMapping("/gototrackandregister")
	public String goToTrackAndRegisterForm() {
		return "courier-register-and-track";
	}
	
	@GetMapping("/getcustomercourierlist")
    public String getDocumentUser(@RequestParam("customerById") int id ,Model model)
    {
        CustomerCourierDTO customerCourierdto = customerService.getCourierList(id);
        model.addAttribute("getCustomer", customerCourierdto.getCustomerById());
        model.addAttribute("courierlist", customerCourierdto.getCourierList());
        return "customer-courier-list";
    }

}
