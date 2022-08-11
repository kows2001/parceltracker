package com.chainsys.parcelTracker.model;

import java.sql.Date;
import java.util.Calendar;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


@Entity
@Table(name = "CUSTOMER")
public class Customer {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator="customer_id_REF")
	@SequenceGenerator(name="customer_id_REF", sequenceName = "customer_id_REF" , allocationSize = 1)
	@Column(name = "customer_id")
	private int customerId;

	@Column(name = "name")
//	@Size(max = 20, min = 3, message = "*Name length should be 3 to 20")
//	@NotBlank(message = "*Name is required")
//	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid  name")
	private String customerName;

	@Column(name = "gender")
	/* @NotBlank(message = "*Gender is required") */
	private String gender;

	
	private Date dateOfJoining;

	@Column(name = "email")
//	@Email(message = "*Email is not valid")
//	@NotBlank(message = "*Please enter email")
	private String email;

	@Column(name = "password")
//	@Size(max = 20, min = 8, message = "*Password length should be 8 to 20")
//	@NotBlank(message = "*Password can't be Empty")
//	@Pattern(regexp = "^(?=.*[a-zA-Z\\d].*)[a-zA-Z\\d!@#$%&*]\\w{8,20}$", message = "*Enter valid password ")
	private String password;

	
	private long phoneNumber;

	@Column(name = "city")
//	@NotBlank(message = "*Please select city")
//	@Pattern(regexp = "^[a-zA-Z]*$", message = "*Value should be in Alphabets ")
	private String city;


//	@NotBlank(message = "*please select state")
//	@Pattern(regexp = "^[a-zA-Z]*$", message = "*Value should be in Alphabets ")
	@Column(name = "state")
	private String state;

	@OneToMany(mappedBy = "customer", fetch = FetchType.LAZY)
	private List<Courier> courierlist;

	public List<Courier> getCourierlist() {
		return courierlist;
	}

	public void setCourierlist(List<Courier> courierlist) {
		this.courierlist = courierlist;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

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

	public void setDateOfJoining( Date dateOfJoining) {
		/*
		 * Calendar calendar = Calendar.getInstance(); String dateOfJoining =
		 * (calendar.get(Calendar.MONTH)+1) + "/" + (calendar.get(Calendar.DATE)) + "/"
		 * + calendar.get(Calendar.YEAR);
		 */
		this.dateOfJoining = dateOfJoining;
	}

	public long getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

}
