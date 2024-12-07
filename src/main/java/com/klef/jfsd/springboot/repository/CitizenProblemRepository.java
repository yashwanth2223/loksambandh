package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.CitizenProblem;

@Repository
public interface CitizenProblemRepository extends JpaRepository<CitizenProblem, Integer> 
{

	List<CitizenProblem> findByStatus(String status);
	
}
