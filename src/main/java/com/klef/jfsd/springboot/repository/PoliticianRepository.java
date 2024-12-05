package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.News;
import com.klef.jfsd.springboot.model.Politician;

import jakarta.transaction.Transactional;

import java.util.List;


@Repository
public interface PoliticianRepository  extends JpaRepository<Politician, Integer>
{

	@Query("select p from Politician p where p.email=?1 and p.password=?2")
	public Politician checkpoliticianlogin(String pemail,String ppassword);

	public void save(News n);
	
	List<Politician> findByConstituency(String constituency);
	
	
}
