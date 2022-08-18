package com.chainsys.parcelTracker.model;

import java.util.Calendar;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name = "COURIER")
public class Courier {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator="Reference_no_REF")
	@SequenceGenerator(name="Reference_no_REF", sequenceName = "Reference_no_REF" , allocationSize = 10)
	@Column(name = "Reference_no")
	private int courierReferenceNo;
 
	@Column(name = "Customer_id")
	@NotBlank(message = "*Please enter customer id")
	private int customerId;

	@Column(name = "Courier_type")
    @NotBlank(message = "*Select courier type")
	private String courierType;

	@Column(name = "Weight")
	private float courierWeight;

	@Column(name = "Cost")
	private float courierCost;

	@Column(name = "Source")
	private String source;

	@Column(name = "Destination")
	private String destination;

	@Column(name = "Booked_date")
	private String bookedDate;


	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "customer_id", nullable = false, insertable = false, updatable = false)
	private Customer customer;

	public int getCourierReferenceNo() {
		return courierReferenceNo;
	}

	public void setCourierReferenceNo(int courierReferenceNo) {
		this.courierReferenceNo = courierReferenceNo;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getCourierType() {
		return courierType;
	}

	public void setCourierType(String courierType) {
		this.courierType = courierType;
	}

	public float getCourierWeight() {
		return courierWeight;
	}

	public void setCourierWeight(float courierWeight) {
		this.courierWeight = courierWeight;
	}

	public float getCourierCost() {
		return courierCost;
	}

	public void setCourierCost(float courierCost) {
		this.courierCost = courierCost;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getBookedDate() {
		return bookedDate;
	}

	public void setBookedDate() {
		Calendar calendar = Calendar.getInstance();
		String date =  calendar.get(Calendar.DATE) + "/" + (calendar.get(Calendar.MONTH)+1) + "/" + calendar.get(Calendar.YEAR);
		this.bookedDate = date;
	}

	

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

}