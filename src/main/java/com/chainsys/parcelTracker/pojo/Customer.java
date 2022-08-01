package com.chainsys.parcelTracker.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name ="CUSTOMER")
public class Customer {
	@Id
	@Column(name = "customer_id")
     private int customerId;
	
	@Column(name = "name")
	private String customerName;
	
	@Column(name = "gender")
	private String gender;
	
	@Column(name = "date_of_joining")
	private Date dateOfJoining;
	
	@Column(name = "email")
	private String email;
	
	@Column(name = "password")
	private String password;
	
	@Column(name = "phone_number")
	private long phoneNumber;
	
	@Column(name = "city")
	private String city;
	
	@Column(name = "state")
	private String state;
	
    
	public int getCustomerId() {
		return customerId;
	}



	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}



	public String getCustomerName() {
		return customerName;
	}



	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}



	public Date getDateOfJoining() {
		return dateOfJoining;
	}



	public void setDateOfJoining(Date dateOfJoining) {
		this.dateOfJoining = dateOfJoining;
	}



	public long getPhoneNumber() {
		return phoneNumber;
	}



	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	

	
}
