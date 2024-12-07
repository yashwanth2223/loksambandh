package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Citizen;
import com.klef.jfsd.springboot.model.CitizenProblem;
import com.klef.jfsd.springboot.model.News;

public interface CitizenService 
{
	   String CitizenRegistration(Citizen c);  
	 // boolean isAadharValid(String aadharNumber);
	  
	   public String PostProblem(CitizenProblem p);
	  
	  
	  public Citizen checkcitlogin(String email, String password);
	  public Citizen displayCitizenByID(int cid);
	  public String updateCitizenProfile(Citizen cit);

	    public List<News> viewposts();
	    public long newcount();
	    public News viewPostsById(int id);
	  
	 
	  
	  
	  
}
