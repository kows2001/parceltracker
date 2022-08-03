package com.chainsys.parcelTracker.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.parcelTracker.dao.CourierStatusRepository;
import com.chainsys.parcelTracker.model.CourierStatus;
import com.chainsys.parcelTracker.service.CourierService;
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
	public String updateCourierDetails(Model model) {

		CourierStatus costatus = new CourierStatus();
		model.addAttribute("addstatus", costatus);
		return "courierstatusadd-form";
	}

	@PostMapping("/courierStatusAdd")
	public String addNewCus(@ModelAttribute("addstatus") CourierStatus costatus) {
		coStatusService.addCourierDetails(costatus);

		return "redirect:/courierstatus/courierstatuslist";
	}
	@GetMapping("/courierstatusupdate")
	public String showUpdateForm(@RequestParam("courierReferenceNo") int id, Model model) {
		CourierStatus costatus = coStatusService.findDetailsByRefId(id);
		model.addAttribute("updatestatus", costatus);
		return "courierstatusupdate-form";
	}

	@PostMapping("/courierStatusUpdate")
	public String updateStatusDetail(@ModelAttribute("updatestatus") CourierStatus costatus) {
		coStatusService.addCourierDetails(costatus);
		return "redirect:/courierstatus/courierstatuslist";
	}

     @GetMapping("/trackingpage")
     public String goToTrackingPage() {
    	
    	 return "courier-tracking-form";
     }
     @GetMapping("/courierStatusByRefNo")
      public String courierStatusList(@RequestParam("courierReferenceNo") int refNo, Model model) { 
      CourierStatus statusList = coStatusService.findDetailsByRefId(refNo);
	  model.addAttribute("courierStatusByRefNo", statusList); 
	  return  "courierstatus-by-refno"; }
	 
      
     
   
	
   
	}


