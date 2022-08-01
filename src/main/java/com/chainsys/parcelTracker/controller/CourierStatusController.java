package com.chainsys.parcelTracker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.parcelTracker.dao.CourierStatusRepository;
import com.chainsys.parcelTracker.pojo.CourierStatus;
import com.chainsys.parcelTracker.service.CourierService;
import com.chainsys.parcelTracker.service.CourierStatusService;

@Controller
@RequestMapping("/Courierdetails")
public class CourierStatusController {
	CourierStatusService  coStatusService;
	
//	@GetMapping("/courierstatusupdate")
//	public String updateCourierDetails(Model model) {
//		
//		CourierStatus  costatus= new CourierStatus();
//		model.addAttribute("currentstatus", costatus);
//		return "CourierUpdate-form";
//	}
//   		
//
//		@PostMapping("/courierupdate")
//		public String addNewCus(@ModelAttribute("currentstatus") CourierStatus costatus) {
//			coStatusService.addCourierDetails(costatus);
//          
//		return null;
//		}
			
	}


