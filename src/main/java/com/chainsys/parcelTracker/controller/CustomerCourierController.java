package com.chainsys.parceltracker.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.chainsys.parceltracker.dto.CustomerCourierDTO;
import com.chainsys.parceltracker.service.CustomerCourierService;

@Controller
@RequestMapping("/customercourier")
public class CustomerCourierController {
	@Autowired
	CustomerCourierService customerCourierService;

	
	
	  @GetMapping("/getcustomercourierlist") 
	  public String getCustomerCourier(@RequestParam("customerId") int id ,Model model) {
	  CustomerCourierDTO customerCourierdto = customerCourierService.getCourierList(id);
	  model.addAttribute("courierlist", customerCourierdto.getCourierList());
	  return "customer-courier-list"; }
	 
	 
	
	
	
}
