package com.chainsys.parcelTracker.pojo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "COURIER")
public class Courier {
    @Id 
	private int reference_no;
	 private String courier_type;
	 private float weight;
	 private float cost;
	 private String source;
	 private String destination;
	 private Date booked_date;
	 private Date expected_date;
	 private String status;
	 
	 public int getReference_no() {
		return reference_no;
	}
	public void setReference_no(int reference_no) {
		this.reference_no = reference_no;
	}
	public String getCourier_type() {
		return courier_type;
	}
	public void setCourier_type(String courier_type) {
		this.courier_type = courier_type;
	}
	public float getWeight() {
		return weight;
	}
	public void setWeight(float weight) {
		this.weight = weight;
	}
	public float getCost() {
		return cost;
	}
	public void setCost(float cost) {
		this.cost = cost;
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
	public Date getBooked_date() {
		return booked_date;
	}
	public void setBooked_date(Date booked_date) {
		this.booked_date = booked_date;
	}
	public Date getExpected_date() {
		return expected_date;
	}
	public void setExpected_date(Date expected_date) {
		this.expected_date = expected_date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	 
}
	 
	
	
	
	