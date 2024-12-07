package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Citizen;
import com.klef.jfsd.springboot.model.CitizenProblem;
import com.klef.jfsd.springboot.model.News;
import com.klef.jfsd.springboot.repository.CitizenProblemRepository;
import com.klef.jfsd.springboot.repository.CitizenRepository;
import com.klef.jfsd.springboot.repository.NewsRepository;

@Service
public class CitizenServiceImpl implements CitizenService
{
	    @Autowired 
	    private CitizenRepository citizenRepository;
	    
	    @Autowired
	    private  CitizenProblemRepository citizenProblemRepository;
	    
	    @Autowired
	    private NewsRepository newsRepository;
	    
//	    @Autowired
//	    private AadharRepository aadharRepository;
	    
	 
	 	public String CitizenRegistration(Citizen c) 
	  	{ 	
//	 	if (!isAadharValid(c.getAadharnumber())) {
//	       return "Please enter a valid Aadhaar number.";
//	         }
	 				
		 citizenRepository.save(c);
		 return "Citizen Registered Successfully"; 
	    }
	 	
	 
	 	
	 	public Citizen checkcitlogin(String email, String password)  
	    {
		  return citizenRepository.checkcitlogin(email,password); 
	   	}
	    public Citizen displayCitizenByID(int cid) 
	    {
	    	return citizenRepository.findById(cid).get();
		
	    }
	    
	    public String updateCitizenProfile(Citizen cit)
	    {
	    	Citizen c = citizenRepository.findById(cit.getId()).get();
	        
	       
	        c.setName(cit.getName());
	        c.setPassword(cit.getPassword());
	        c.setContactno(cit.getContactno());
	      
	        citizenRepository.save(c);
	        
	        return "Citizen Updated Successfully";
	    	
	    }

		@Override
		public String PostProblem(CitizenProblem p) 
		{
			citizenProblemRepository.save(p);
			return "Problem Posted Successfully";
		}
		
		 public long getTotalProblemsCount() 
		 	{
		        return citizenProblemRepository.count();
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

}
	    
	    