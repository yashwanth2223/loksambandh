package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Citizen;
import com.klef.jfsd.springboot.model.CitizenProblem;
import com.klef.jfsd.springboot.model.Politician;

public interface AdminService 
{
	public Admin checkadminlogin(String username,String password);
	
	public List<Politician> ViewAllPoliticians();
	
	 public long pincount();
	 
	 public List<CitizenProblem> ViewProblems();
	 
	 public CitizenProblem ViewProblemByID(int id);
	 
	 public String deletepoli(int pid);
	 
	 public long cpcount();
	 
	 public List<Citizen> ViewAllCitizens();
}
