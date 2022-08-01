package com.chainsys.parcelTracker.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "COURIER_STATUS")
public class CourierStatus {
	@Id
	@Column(name = "reference_no")
	private int courierReferenceNo;
	
	@Column(name = "status_date")
	private Date statusUpdateDate;
	
	@Column(name = "current_place")
	private String currentPlace;
	
	@Column(name = "check_in_time")
	private String checkInTime;
	
	@Column(name = "check_out_time")
	private String checkOutTime;
	
	@Column(name = "status")
	private String courierStatus;
	
	
	
	public int getCourierReferenceNo() {
		return courierReferenceNo;
	}

	public void setCourierReferenceNo(int courierReferenceNo) {
		this.courierReferenceNo = courierReferenceNo;
	}

	public Date getStatusUpdateDate() {
		return statusUpdateDate;
	}

	public void setStatusUpdateDate(Date statusUpdateDate) {
		this.statusUpdateDate = statusUpdateDate;
	}

	public String getCurrentPlace() {
		return currentPlace;
	}

	public void setCurrentPlace(String currentPlace) {
		this.currentPlace = currentPlace;
	}

	public String getCheckInTime() {
		return checkInTime;
	}

	public void setCheckInTime(String checkInTime) {
		this.checkInTime = checkInTime;
	}

	public String getCheckOutTime() {
		return checkOutTime;
	}

	public void setCheckOutTime(String checkOutTime) {
		this.checkOutTime = checkOutTime;
	}

	public String getCourierStatus() {
		return courierStatus;
	}

	public void setCourierStatus(String courierStatus) {
		this.courierStatus = courierStatus;
	}

	
}
