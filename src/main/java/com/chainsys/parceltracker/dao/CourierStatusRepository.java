package com.chainsys.parceltracker.dao;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.chainsys.parceltracker.model.CourierStatus;
@Repository
public interface CourierStatusRepository extends CrudRepository<CourierStatus, Integer>{
	
	CourierStatus save(CourierStatus costatus);
	
	CourierStatus findById(int id);
	
	Iterable<CourierStatus> findAll();
	
	void deleteById(int id);
	
	

}
