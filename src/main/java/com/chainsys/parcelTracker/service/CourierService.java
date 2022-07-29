package com.chainsys.parcelTracker.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.parcelTracker.dao.CourierRepository;
import com.chainsys.parcelTracker.pojo.Courier;
@Service
public class CourierService {
    @Autowired
	private CourierRepository repo;
	
	public Courier addCourierDetails(Courier courier) {
		return repo.save(courier);
	}
}
