package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Citizen;

import jakarta.transaction.Transactional;

@Repository
public interface CitizenRepository extends JpaRepository<Citizen, Integer>
{

	@Query("select c from Citizen c where c.email=?1 and c.password=?2 ") 
	public Citizen checkcitlogin(String email, String password);
	

	

}
