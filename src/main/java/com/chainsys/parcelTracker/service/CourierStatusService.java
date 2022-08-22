package com.chainsys.parceltracker.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.parceltracker.dao.CourierStatusRepository;
import com.chainsys.parceltracker.model.CourierStatus;

@Service
public class CourierStatusService {
	 @Autowired
		private CourierStatusRepository courierStatusRepo;
		
		public CourierStatus addCourierDetails(CourierStatus courierstatus) {
			return courierStatusRepo.save(courierstatus);
		}
		
		public Iterable<CourierStatus> getCourierDetails(){
			return courierStatusRepo.findAll();
		}
		
		public CourierStatus findDetailsByRefId(int id) {
			return  courierStatusRepo.findById(id);
			
		}

}
