package com.chainsys.parcelTracker.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.parcelTracker.model.CourierStatus;
import com.chainsys.parcelTracker.service.CourierStatusService;

@Controller
@RequestMapping("/courierstatus")
public class CourierStatusController {
	@Autowired
	CourierStatusService  coStatusService;
	CourierStatus courierStatus = null;
	int refNo = 0;
	
	@GetMapping("/courierstatuslist")
	public String courierStatusDetailslist(Model model) {
		Iterable<CourierStatus> costatuslist = coStatusService.getCourierDetails();
		model.addAttribute("courierstatuslist", costatuslist);
		return "courierstatuslist";
	}

	@GetMapping("/courierstatusadd")
	public String updateCourierDetails(@RequestParam("courierReferenceNo") int courierRefNo , Model model) {

		CourierStatus costatus = new CourierStatus();
		costatus.setCourierReferenceNo(courierRefNo);
		costatus.setCourierStatus("Booked");
		model.addAttribute("addstatus", costatus);
		return "courierstatusadd-form";
	}

	@PostMapping("/courierStatusAdd")
	public String addNewCus(@ModelAttribute("addstatus") CourierStatus costatus) {
		coStatusService.addCourierDetails(costatus);

		return "redirect:/courierstatus/courierstatuslist";
	}
	
     @GetMapping("/trackingpage")
     public String goToTrackingPage() {
    	
    	 return "courier-tracking-form";
     }
     @GetMapping("/courierStatusByRefNo")
      public String courierStatusList(@RequestParam("courierReferenceNo") int refNo, Model model) { 
      CourierStatus status = coStatusService.findDetailsByRefId(refNo);
	  model.addAttribute("courierstatusbyrefno", status); 
	  if(status != null) {
		  return  "courierstatus-by-refno";
	  }
	  return "error-courierStatus";
	 
	  }

	}


