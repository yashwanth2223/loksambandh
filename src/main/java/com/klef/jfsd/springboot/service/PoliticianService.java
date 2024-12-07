package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.CitizenProblem;
import com.klef.jfsd.springboot.model.News;
import com.klef.jfsd.springboot.model.Politician;

public interface PoliticianService 
{
    public String PoliticanRegistration(Politician p);
    
    public Politician checkpoliticianlogin(String pemail, String ppassword);
    
    public Politician displayPoliticainByID(int pid);
    
    public String UpdatePoliticianProfile(Politician pin);
    
    public String PostNews(News n);
    
    // Counting methods for problems
    public long getTotalProblemsCount();
    
    public List<CitizenProblem> ViewCitProblem();
    public long pincount();
    public CitizenProblem ViewCitProblemByID(int id);
    
    public void updateStatus(int id, String status);
    
    
    
    
    public List<News> viewposts();
    public long newcount();
    public News viewPostsById(int id);
    
    
    
    List<Politician> getAllPoliticians();
    List<Politician> getPoliticiansByConstituency(String constituency);
    List<String> getAllConstituencies();
    
    public List<CitizenProblem> getProblemsByStatus(String status);

}
