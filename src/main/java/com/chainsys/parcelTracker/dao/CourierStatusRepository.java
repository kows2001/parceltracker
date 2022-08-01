package com.chainsys.parcelTracker.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.parcelTracker.pojo.Courier;
import com.chainsys.parcelTracker.pojo.CourierStatus;
@Repository
public interface CourierStatusRepository extends CrudRepository<CourierStatus, Integer>{
	
	CourierStatus save(CourierStatus costatus);
	
	CourierStatus findById(int id);
	
	Iterable<CourierStatus> findAll();
	
	void deleteById(int id);
	
	

}
