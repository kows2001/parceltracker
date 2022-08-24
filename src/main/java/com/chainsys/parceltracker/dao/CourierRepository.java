package com.chainsys.parceltracker.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.parceltracker.model.Courier;
@Repository
public interface CourierRepository extends CrudRepository<Courier, Integer>{
	
	Courier save(Courier courier);
	
	Courier findById(int id);
	
	List<Courier> findAll();
	
	void deleteById(int id);
	
	List<Courier> findByCustomerId(int customerId);
	
	

}
