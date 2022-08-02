package com.chainsys.parcelTracker.controller;


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
import com.chainsys.parcelTracker.service.CourierService;
import com.chainsys.parcelTracker.service.CourierStatusService;

@Controller
@RequestMapping("/courier")
public class CourierController {
	@Autowired
	CourierService courierservice;
	@Autowired
	CourierStatusService coStatusService;

	@GetMapping("/courierregister")
	public String showRegisterForm2(Model model) {
		Courier theCus = new Courier();
		model.addAttribute("neworder", theCus);
		return "register-form2";
	}

	@PostMapping("/neworder")
	public String addneworder(@ModelAttribute("neworder") Courier theCourier) {
		courierservice.addCourierDetails(theCourier);
		return "welcome";
	}

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
	
//	@GetMapping("/courierstatuslist")
//	public String courierStatusDetailslist(Model model) {
//		Iterable<CourierStatus> costatuslist = coStatusService.getCourierDetails();
//		model.addAttribute("courierstatuslist", costatuslist);
//		return "courierstatuslist";
//	}
//
//	@GetMapping("/courierstatusadd")
//	public String updateCourierDetails(Model model) {
//
//		CourierStatus costatus = new CourierStatus();
//		model.addAttribute("addstatus", costatus);
//		return "courierstatusadd-form";
//	}
//
//	@PostMapping("/courierStatusAdd")
//	public String addNewCus(@ModelAttribute("addstatus") CourierStatus costatus) {
//		coStatusService.addCourierDetails(costatus);
//
//		return "redirect:/courier/courierstatuslist";
//	}
//	@GetMapping("/courierstatusupdate")
//	public String showUpdateForm(@RequestParam("reference_no") int id, Model model) {
//		CourierStatus costatus = coStatusService.findDetailsByRefId(id);
//		model.addAttribute("updatestatus", costatus);
//		return "courierstatusupdate-form";
//	}
//
//	@PostMapping("/courierStatusUpdate")
//	public String updateStatusDetail(@ModelAttribute("updatestatus") CourierStatus costatus) {
//		coStatusService.addCourierDetails(costatus);
//		return "redirect:/courier/courierstatuslist";
//	}
//

}
