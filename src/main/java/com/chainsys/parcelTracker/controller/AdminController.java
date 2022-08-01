package com.chainsys.parcelTracker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.parcelTracker.pojo.Employee;
import com.chainsys.parcelTracker.service.EmployeeService;


@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	EmployeeService empservice;
	
	@GetMapping("/employeeform")
	public String showEmployeeForm(Model model) {
	Employee theemp = new Employee();
		model.addAttribute("newemp", theemp);
		return "emp-form";
}
		

	@PostMapping("/newemp")
	public String addNewCus(@ModelAttribute("newemp") Employee theemp) {
      
     empservice.addEmployeeDetails(theemp); 
	return null;
	}
	
	@GetMapping("/adminlogin")
	public String adminaccessform(Model model) {
		Employee theemp = new Employee();
		model.addAttribute("admin", theemp);
		return "adminLogin-form";
	}
	@PostMapping("/check")
	public String checkingaccess(@ModelAttribute("admin") Employee admin) {
	Employee adminaccess  =	empservice.getAdminAccess();
		if((adminaccess.getEmployeeName().equals(admin.getEmployeeName()))&& (adminaccess.getEmployeePassword()
				.equals(admin.getEmployeePassword()))&&(adminaccess.getEmployeeRole().equals(admin.getEmployeeRole()))){
			
		        return "redirect:/courier/courierlist";
		        }
		else return null;
			
		}
	}
