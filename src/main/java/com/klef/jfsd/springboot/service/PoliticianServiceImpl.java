package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.CitizenProblem;
import com.klef.jfsd.springboot.model.News;
import com.klef.jfsd.springboot.model.Politician;
import com.klef.jfsd.springboot.repository.CitizenProblemRepository;
import com.klef.jfsd.springboot.repository.CitizenRepository;
import com.klef.jfsd.springboot.repository.NewsRepository;
import com.klef.jfsd.springboot.repository.PoliticianRepository;

@Service
public class PoliticianServiceImpl implements PoliticianService
{
	@Autowired
	private PoliticianRepository politicianRepository;
	
	@Autowired
	private NewsRepository newsRepository;
	
	@Autowired
	private CitizenProblemRepository citizenProblemRepository;
	
	@Autowired
	private CitizenRepository citizenRepository;
	
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

		@Override
		public List<CitizenProblem> ViewCitProblem() 
		{
			return (List<CitizenProblem>)  citizenProblemRepository.findAll();
		}

		@Override
		public long pincount() 
		{
			return citizenProblemRepository.count();
		}

		@Override
		public CitizenProblem ViewCitProblemByID(int id) 
		{
			return citizenProblemRepository.findById(id).get();
		}

		@Override
		public List<News> viewposts() 
		{
			return newsRepository.findAll(); 
		}

		@Override
		public long newcount() 
		{
			return newsRepository.count();
		}

		@Override
		public News viewPostsById(int id) 
		{
			return newsRepository.findById(id).get();
		}

		@Override
		public void updateStatus(int id, String status) 
		{
			CitizenProblem problem = citizenProblemRepository.findById(id)
	                .orElseThrow(() -> new RuntimeException("Problem not found"));
	        problem.setStatus(status); 
	        citizenProblemRepository.save(problem);
		}

		
		public List<CitizenProblem> getProblemsByStatus(String status) {
		    return citizenProblemRepository.findByStatus(status);
		}
}
