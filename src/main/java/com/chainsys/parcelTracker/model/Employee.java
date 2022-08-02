package com.chainsys.parcelTracker.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "EMPLOYEE")
public class Employee {
	@Id
	@Column(name  = "employee_id")
	private int employeeId;
	
	@Column(name  = "employee_name")
	private String employeeName;
	
	@Column(name  = "gender")
	private String employeeGender;
	
	@Column(name  = "date_of_birth")
	private Date dateOfBirth;
	
	@Column(name  = "address")
	private String employeeAddress;
	
	@Column(name  = "email")
	private String employeeEmail;
	
	@Column(name  = "password")
	private String employeePassword;
	
	@Column(name  = "date_of_joining")
	private Date empDateOfJoining;
	
	@Column(name  = "role")
	private String employeeRole;
	
	public String getEmployeePassword() {
		return employeePassword;
	}
	public void setEmployeePassword(String employeePassword) {
		this.employeePassword = employeePassword;
	}
	public String getEmployeeRole() {
		return employeeRole;
	}
	public void setEmployeeRole(String employeeRole) {
		this.employeeRole = employeeRole;
	}
	
	
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getEmployeeGender() {
		return employeeGender;
	}
	public void setEmployeeGender(String employeeGender) {
		this.employeeGender = employeeGender;
	}
	public Date getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getEmployeeAddress() {
		return employeeAddress;
	}
	public void setEmployeeAddress(String employeeAddress) {
		this.employeeAddress = employeeAddress;
	}
	public String getEmployeeEmail() {
		return employeeEmail;
	}
	public void setEmployeeEmail(String employeeEmail) {
		this.employeeEmail = employeeEmail;
	}
	public Date getEmpDateOfJoining() {
		return empDateOfJoining;
	}
	public void setEmpDateOfJoining(Date empDateOfJoining) {
		this.empDateOfJoining = empDateOfJoining;
	}
	
}
