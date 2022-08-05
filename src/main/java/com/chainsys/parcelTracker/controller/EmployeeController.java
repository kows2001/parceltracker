package com.chainsys.parcelTracker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.parcelTracker.model.Employee;
import com.chainsys.parcelTracker.service.EmployeeService;


@Controller
@RequestMapping("/admin")
public class EmployeeController {
	
	@Autowired
	EmployeeService employeeService;
	
	@GetMapping("/employeeform")
	public String showEmployeeForm(Model model) {
	Employee theemp = new Employee();
		model.addAttribute("newemp", theemp);
		return "emp-form";
}
		

	@PostMapping("/newemp")
	public String addNewCus(@ModelAttribute("newemp") Employee theemp) {
      
     employeeService.addEmployeeDetails(theemp); 
	return null;
	}
	
	@GetMapping("/adminlogin")
	public String adminaccessform(Model model) {
		Employee theemp = new Employee();
		model.addAttribute("admin", theemp);
		return "employee-login-form";
	}
	@PostMapping("/check")
	public String checkingaccess(@ModelAttribute("admin") Employee employee) {
	Employee admin  = employeeService.getEmployeeByRoleAndNameAndPassword(employee.getEmployeeRole(), employee.getEmployeeName(),employee.getEmployeePassword());
		if(admin!=null) {
		        return "redirect:/courier/courierlist";
		        }
		else return "invalid-customer-error";
			
		}
	}
