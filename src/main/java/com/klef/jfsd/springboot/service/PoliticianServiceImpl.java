package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.News;
import com.klef.jfsd.springboot.model.Politician;
import com.klef.jfsd.springboot.repository.NewsRepository;
import com.klef.jfsd.springboot.repository.PoliticianRepository;

@Service
public class PoliticianServiceImpl implements PoliticianService
{
	@Autowired
	private PoliticianRepository politicianRepository;
	
	@Autowired
	private NewsRepository newsRepository;
	
	@Override
	public String PoliticanRegistration(Politician p) 
	{
		politicianRepository.save(p);
		return "Politician Registered Successfully";
	}

	@Override
	public Politician checkpoliticianlogin(String pemail, String ppassword) 
	{
		return politicianRepository.checkpoliticianlogin(pemail, ppassword);
	}

	@Override
	public Politician displayPoliticainByID(int pid) 
	{
		return null;
	}

	@Override
	public String UpdatePoliticianProfile(Politician pin)
	{
		Politician p = politicianRepository.findById(pin.getId()).get();

		p.setName(pin.getName());
		p.setDesignation(pin.getDesignation());
		p.setConstituency(pin.getConstituency());
		p.setPassword(pin.getPassword());
		p.setContactno(pin.getContactno());
		
		politicianRepository.save(p);		
		
		return "Profile Updated Successfully";
	}

	@Override
	public String PostNews(News n) 
	{
		newsRepository.save(n);
		return "News Posted Successfully";
	}

        public long getTotalProblemsCount() 
	 	{
	        return newsRepository.count();
	    }
        
        @Override
        public List<Politician> getAllPoliticians()
        {
            return politicianRepository.findAll();
        }
        
        @Override
        public List<Politician> getPoliticiansByConstituency(String constituency) 
        {
            return politicianRepository.findByConstituency(constituency);
        }

		public List<String> getAllConstituencies()
		{ 
	        return politicianRepository.findAll()
	                .stream()
	                .map(Politician::getConstituency)
	                .distinct()
	                .toList();
	    }



}
