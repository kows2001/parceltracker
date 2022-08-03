package com.chainsys.parcelTracker.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.parcelTracker.model.Courier;
import com.chainsys.parcelTracker.model.Customer;

public class CustomerCourierDTO {
	
	@Autowired
    private Customer customer;
    private List<Courier> courierlist=new ArrayList<Courier>();
    public 	Customer getCustomerById() {
        return customer;
    }
    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
    public List<Courier> getCourierList() {
        return courierlist;
    }
    public void addCourierList(Courier courierList)
    {
    	courierlist.add(courierList);
    }

}
