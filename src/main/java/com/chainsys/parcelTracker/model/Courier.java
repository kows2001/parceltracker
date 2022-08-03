package com.chainsys.parcelTracker.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "COURIER")
public class Courier {

	@Id
	@Column(name = "reference_no")
	private int courierReferenceNo;

	@Column(name = "customer_id")
	private int customerId;

	@Column(name = "courier_type")
	private String courierType;

	@Column(name = "weight")
	private float courierWeight;

	@Column(name = "cost")
	private float courierCost;

	@Column(name = "source")
	private String source;

	@Column(name = "destination")
	private String destination;

	@Column(name = "booked_date")
	private Date bookedDate;

	@Column(name = "expected_date")
	private Date expectedDate;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "customer_id", nullable = false, insertable = false, updatable = false)
	private Customer customer;

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

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

	public Date getBookedDate() {
		return bookedDate;
	}

	public void setBookedDate(Date bookedDate) {
		this.bookedDate = bookedDate;
	}

	public Date getExpectedDate() {
		return expectedDate;
	}

	public void setExpectedDate(Date expectedDate) {
		this.expectedDate = expectedDate;
	}

}
