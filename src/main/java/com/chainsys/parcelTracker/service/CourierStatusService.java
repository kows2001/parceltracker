package com.chainsys.parcelTracker.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.parcelTracker.dao.CourierRepository;
import com.chainsys.parcelTracker.dao.CourierStatusRepository;
import com.chainsys.parcelTracker.pojo.Courier;
import com.chainsys.parcelTracker.pojo.CourierStatus;

@Service
public class CourierStatusService {
	 @Autowired
		private CourierStatusRepository repo;
		
		public CourierStatus addCourierDetails(CourierStatus courierstatus) {
			return repo.save(courierstatus);
		}
		
		public Iterable<CourierStatus> getCourierDetails(){
			Iterable<CourierStatus> colist =  repo.findAll();
			return colist;
		}
		
		public CourierStatus findDetailsByRefId(int id) {
			CourierStatus courierStatusDetails = repo.findById(id);
			return courierStatusDetails;
			
		}

}
