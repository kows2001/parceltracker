package com.chainsys.parcelTracker.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.parcelTracker.dao.CourierRepository;
import com.chainsys.parcelTracker.model.Courier;
@Service
public class CourierService {
   @Autowired
	private CourierRepository courierRepo;
	
	public Courier addCourierDetails(Courier courier) {
		return courierRepo.save(courier);
	}
	
	public Iterable<Courier> getCourierDetails(){
		Iterable<Courier> colist =  courierRepo.findAll();
		return colist;
	}
	
}
