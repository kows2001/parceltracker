package com.chainsys.parcelTracker.pojo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "COURIER_STATUS")
public class CourierStatus {
	@Id
	private int reference_no;
	private Date status_date;
	private String current_place;
	private Date check_in_time;
	private Date check_out_time;
	
	public int getReference_no() {
		return reference_no;
	}
	public void setReference_no(int reference_no) {
		this.reference_no = reference_no;
	}
	public Date getStatus_date() {
		return status_date;
	}
	public void setStatus_date(Date status_date) {
		this.status_date = status_date;
	}
	public String getCurrent_place() {
		return current_place;
	}
	public void setCurrent_place(String current_place) {
		this.current_place = current_place;
	}
	public Date getCheck_in_time() {
		return check_in_time;
	}
	public void setCheck_in_time(Date check_in_time) {
		this.check_in_time = check_in_time;
	}
	public Date getCheck_out_time() {
		return check_out_time;
	}
	public void setCheck_out_time(Date check_out_time) {
		this.check_out_time = check_out_time;
	}
	
}
