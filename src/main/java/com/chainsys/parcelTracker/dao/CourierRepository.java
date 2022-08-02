package com.chainsys.parcelTracker.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.parcelTracker.model.Courier;

public interface CourierRepository extends CrudRepository<Courier, Integer>{
	
	Courier save(Courier courier);
	
	Courier findById(int id);
	
	Iterable<Courier> findAll();
	
	void deleteById(int id);
	
	

}
