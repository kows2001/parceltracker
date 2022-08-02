package com.chainsys.parcelTracker.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.parcelTracker.dao.CourierStatusRepository;
import com.chainsys.parcelTracker.model.CourierStatus;
import com.chainsys.parcelTracker.service.CourierService;
import com.chainsys.parcelTracker.service.CourierStatusService;
import com.chainsys.springmvc.pojo.Doctor;

@Controller
@RequestMapping("/courierstatus")
public class CourierStatusController {
	CourierStatusService  coStatusService;
	
	@GetMapping("/courierstatuslist")
	public String courierStatusDetailslist(Model model) {
		Iterable<CourierStatus> costatuslist = coStatusService.getCourierDetails();
		model.addAttribute("courierstatuslist", costatuslist);
		return "courierstatuslist";
	}

	@GetMapping("/courierstatusadd")
	public String updateCourierDetails(Model model) {

		CourierStatus costatus = new CourierStatus();
		model.addAttribute("addstatus", costatus);
		return "courierstatusadd-form";
	}

	@PostMapping("/courierStatusAdd")
	public String addNewCus(@ModelAttribute("addstatus") CourierStatus costatus) {
		coStatusService.addCourierDetails(costatus);

		return "redirect:/courier/courierstatuslist";
	}
	@GetMapping("/courierstatusupdate")
	public String showUpdateForm(@RequestParam("reference_no") int id, Model model) {
		CourierStatus costatus = coStatusService.findDetailsByRefId(id);
		model.addAttribute("updatestatus", costatus);
		return "courierstatusupdate-form";
	}

	@PostMapping("/courierStatusUpdate")
	public String updateStatusDetail(@ModelAttribute("updatestatus") CourierStatus costatus) {
		coStatusService.addCourierDetails(costatus);
		return "redirect:/courier/courierstatuslist";
	}

     @GetMapping("/trackingpage")
     public String goToTrackingPage() {
    	 return "courier-tracking-page";
     }
     
     @PostMapping("/courierstatuslist")
     public CourierStatus courierStatusList(@RequestParam("referenceNumber") int id, Model model) {
    	 CourierStatus statusList = coStatusService.findDetailsByRefId(id) ;
     }
     
     public String findDoctorById(@RequestParam("docid") int id, Model model) {
 		Doctor theDoc = drService.findById(id);
 		model.addAttribute("finddoctorbyid", theDoc);
 		return "find-doctor-id-form";
 	}
	
	}


