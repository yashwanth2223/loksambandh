package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.CitizenProblem;
import com.klef.jfsd.springboot.model.Politician;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CitizenProblemRepository;
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

	
}
