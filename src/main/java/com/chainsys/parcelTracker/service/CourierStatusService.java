package com.chainsys.parcelTracker.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.parcelTracker.dao.CourierRepository;
import com.chainsys.parcelTracker.dao.CourierStatusRepository;
import com.chainsys.parcelTracker.model.Courier;
import com.chainsys.parcelTracker.model.CourierStatus;

@Service
public class CourierStatusService {
	 @Autowired
		private CourierStatusRepository courierStatusRepo;
		
		public CourierStatus addCourierDetails(CourierStatus courierstatus) {
			return courierStatusRepo.save(courierstatus);
		}
		
		public Iterable<CourierStatus> getCourierDetails(){
			Iterable<CourierStatus> colist =  courierStatusRepo.findAll();
			return colist;
		}
		
		public CourierStatus findDetailsByRefId(int id) {
			CourierStatus courierStatusDetails = courierStatusRepo.findById(id);
			return courierStatusDetails;
			
		}

}
