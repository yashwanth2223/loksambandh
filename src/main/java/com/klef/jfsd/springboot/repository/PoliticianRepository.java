package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.CitizenProblem;
import com.klef.jfsd.springboot.model.News;
import com.klef.jfsd.springboot.model.Politician;


@Repository
public interface PoliticianRepository  extends JpaRepository<Politician, Integer>
{

	@Query("select p from Politician p where p.email=?1 and p.password=?2")
	public Politician checkpoliticianlogin(String pemail,String ppassword);

	public void save(News n);
	
	 List<Politician> findByConstituency(String constituency);
	 
		/*
		 * @Query("update CitizenProblem p set p.status=?1where p.id=?2")
		 * 
		 * @Modifying
		 * 
		 * @Transactional public int updateproblemstatus(String status, int id);
		 */
	 
	 public interface CitizenProblemRepository extends JpaRepository<CitizenProblem, Integer> {
		 List<CitizenProblem> findByStatus(String status);
		}
	 
	
}
