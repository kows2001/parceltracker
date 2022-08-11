package com.chainsys.parcelTracker.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.parcelTracker.model.Courier;
import com.chainsys.parcelTracker.model.CourierStatus;
import com.chainsys.parcelTracker.model.Customer;
import com.chainsys.parcelTracker.service.CourierService;
import com.chainsys.parcelTracker.service.CourierStatusService;

@Controller
@RequestMapping("/courier")
public class CourierController {
	@Autowired
	CourierService courierservice;
	
	@GetMapping("/courierregister")
	public String showRegisterForm( @RequestParam("customerId") int id,Model model) {
		Courier theCourier = new Courier();
		System.out.println("debug: CourierCountroler.showRegisterationForm " + id);
		theCourier.setCustomerId(id);
		model.addAttribute("neworder", theCourier);
		return "registeration-form";
	}

	@PostMapping("/neworder")
	public String addneworder(@ModelAttribute("neworder") Courier theCourier  , Model model) {
		 Courier courier =courierservice.addCourierDetails(theCourier);
		 int courierReferenceNo = courier.getCourierReferenceNo();
		 
		 Courier courierRef = new Courier();
		System.out.println("hkjhiyiugu"+courierReferenceNo);
		
		courierRef.setCourierReferenceNo(courierReferenceNo);
		model.addAttribute("courierReferenceNo", courierRef );
		return "welcome";
		
		

	}
	
	/*
	 * @GetMapping("/getReferenceNo") public String
	 * getReferenceNumber(@RequestParam("courierReferenceNo") int refNo, Model
	 * model) { Courier courier = new Courier();
	 * courier.setCourierReferenceNo(refNo); return "welcome"; }
	 */
	

	@GetMapping("/courierlist")
	public String registeredlist(Model model) {
		Iterable<Courier> colist = courierservice.getCourierDetails();
		model.addAttribute("listofregisteredCourier", colist);
		return "registered-list";
	}
    
	 
	@GetMapping("/backtoregisteredlist")
	public String redirectToRegisteredList() {
		return "redirect:/courier/courierlist";
	}


}
