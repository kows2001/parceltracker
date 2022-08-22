package com.chainsys.parceltracker.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.parceltracker.dao.CourierRepository;
import com.chainsys.parceltracker.model.Courier;
@Service
public class CourierService {
   @Autowired
	private CourierRepository courierRepo;
	
	public Courier addCourierDetails(Courier courier) {
		return courierRepo.save(courier);
	}
	
	public List<Courier> getCourierDetails(){
		return courierRepo.findAll();
	}
	
}
