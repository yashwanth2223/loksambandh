package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Citizen;
import com.klef.jfsd.springboot.model.CitizenProblem;
import com.klef.jfsd.springboot.model.Politician;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CitizenProblemRepository;
import com.klef.jfsd.springboot.repository.CitizenRepository;
import com.klef.jfsd.springboot.repository.PoliticianRepository;

@Service
public class AdminServiceImpl implements AdminService 
{
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private PoliticianRepository politicianRepository;
	
	@Autowired
	private CitizenProblemRepository citizenProblemRepository;
	
	@Autowired
	private CitizenRepository citizenRepository;
	
	@Override
	public Admin checkadminlogin(String username, String password) 
	{
		return adminRepository.checkadminlogin(username, password);
	}

	@Override
	public List<Politician> ViewAllPoliticians() 
	{
		return politicianRepository.findAll();
	}

	@Override
	public long pincount() 
	{
		return politicianRepository.count();
	}

	@Override
	public List<CitizenProblem> ViewProblems() 
	{
		return (List<CitizenProblem>)  citizenProblemRepository.findAll();
	}

	@Override
	public long cpcount()
	{	
		return citizenProblemRepository.count();
	}

	@Override
	public CitizenProblem ViewProblemByID(int id) {
		
		return citizenProblemRepository.findById(id).get();
	}

	@Override
	public String deletepoli(int pid) 
	{
		politicianRepository.deleteById(pid);
		return "Politician Deleted Successfully";
	}

	@Override
	public List<Citizen> ViewAllCitizens() 
	{
		return citizenRepository.findAll();
	}

}
