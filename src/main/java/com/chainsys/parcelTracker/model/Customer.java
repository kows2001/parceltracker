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
	private String customerName;

	@Column(name = "gender")
	private String gender;

	
	private String dateOfJoining;

	@Column(name = "email")
	private String email;

	@Column(name = "password")
	private String password;

	
	private long phoneNumber;

	@Column(name = "city")
	private String city;


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

	public String getDateOfJoining() {
		return dateOfJoining;
	}

	public void setDateOfJoining( ) {
		Calendar calendar = Calendar.getInstance();
		String date =  calendar.get(Calendar.DATE) + "/" + (calendar.get(Calendar.MONTH)+1) + "/" + calendar.get(Calendar.YEAR);
		this.dateOfJoining = date;
	}

	public long getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

}
