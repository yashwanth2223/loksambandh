package com.klef.jfsd.springboot.controller;

import java.sql.Blob;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.News;
import com.klef.jfsd.springboot.model.Politician;
import com.klef.jfsd.springboot.service.PoliticianService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class PoliticianController 
{
	@Autowired
	private PoliticianService politicianService;
	
	
	@GetMapping("/")
	public ModelAndView Home()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	
	
	@PostMapping("checkpoliticianlogin")
	public ModelAndView  checkpoliticianlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String pemail=request.getParameter("pemail");
		String ppassword=request.getParameter("ppassword");
		
		Politician pin = politicianService.checkpoliticianlogin(pemail, ppassword);
		
		if(pin!=null)
		{
			HttpSession session=request.getSession(false);
			session.setAttribute("politician", pin);
		   
			//add session interval
			mv.setViewName("politicianhome");
			
			long count = politicianService.getTotalProblemsCount();
			mv.addObject("count",count);
			
		}
		else
		{
			mv.setViewName("politicianlogin");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	

	@GetMapping("politicianlogin")
	public ModelAndView politicianlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("politicianlogin");
		return mv;
	}
	@GetMapping("politicianhome")
	public ModelAndView politicianhome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("politicianhome");

		long count = politicianService.getTotalProblemsCount();
		mv.addObject("count",count);
		
		return mv;
	}
	
	
	@GetMapping("postnews")
	public ModelAndView postnews()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("postnews");
		return mv;
	}
	@PostMapping("insertnews")
	public ModelAndView insertnews(HttpServletRequest request, @RequestParam("image") MultipartFile file) throws Exception 
	{
	    String msg = null;
	    ModelAndView mv = new ModelAndView();
	    
	    try {
	        String title = request.getParameter("title");
	        String content = request.getParameter("content");
	        String status = "Pending";
	        
	        byte[] bytes = file.getBytes();
	        Blob image = new javax.sql.rowset.serial.SerialBlob(bytes);

	        News n = new News();
	        n.setTitle(title);
	        n.setContent(content);
	        n.setImage(image);
	        n.setStatus(status);
	        
	        msg = politicianService.PostNews(n);
	        System.out.println(msg);
	        
	        mv.setViewName("postsuccess");
	        mv.addObject("message", msg);
	    } 
	    catch(Exception e)
	    {
	        msg = e.getMessage();
	        System.out.println(msg);
	        
	        mv.setViewName("posterror");
	        mv.addObject("message", msg);
	    }
	    
	    return mv;
	}
	
	@GetMapping("updatepolitician")
	public ModelAndView updatepolitician()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("updatepolitician");
		return mv;
	}
	
	@PostMapping("updatepoliticianprofile")
	public ModelAndView updatepoliticianprofile(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		try 
		{
			int id = Integer.parseInt(request.getParameter("pid"));
			String name = request.getParameter("pname");
			String designation = request.getParameter("pname");
			String constituency = request.getParameter("pconstituency");
			String password = request.getParameter("ppassword");
			String contactno = request.getParameter("pcontactno");
			
			Politician pin = new Politician();
			pin.setId(id);
			pin.setName(name);
			pin.setDesignation(designation);
			pin.setConstituency(constituency);
			pin.setPassword(password);
			pin.setContactno(contactno);
			
			String msg = politicianService.UpdatePoliticianProfile(pin);
			
			Politician p = politicianService.displayPoliticainByID(id);
			
			HttpSession session = request.getSession();
			session.setAttribute("politician", p);
			
			mv.setViewName("mysuccess");
			mv.addObject("message", msg);
		}
		catch(Exception e)
		{
			mv.setViewName("updaterror");
			mv.addObject("message", e);
		}
		return mv;
	}
	@GetMapping("politiciansessionexpiry")
	public ModelAndView politiciansessionexpiry()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("politiciansessionexpiry");
		return mv;
	}
	
	@GetMapping("/politicians")
    public String showPoliticians(Model model) 
 	{
        List<Politician> politicians = politicianService.getAllPoliticians();
        List<String> constituencies = politicianService.getAllConstituencies();
        model.addAttribute("pinlist", politicians);
        model.addAttribute("constituencyList", constituencies);
        return "politicians"; 
    }

    @GetMapping("/filterPoliticians")
    public String filterPoliticians(@RequestParam("constituency") String constituency, Model model)
    {
        List<Politician> filteredPoliticians = politicianService.getPoliticiansByConstituency(constituency);
        List<String> constituencies = politicianService.getAllConstituencies();
        model.addAttribute("pinlist", filteredPoliticians);
        model.addAttribute("constituencyList", constituencies);
        return "politicians"; 
    }
	
	@GetMapping("politicianlogout")
	public ModelAndView politicianlogout(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		session.removeAttribute("politician");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("politicianlogin");
		return mv;
	}
	
	@GetMapping("/viewproblems")
	public ModelAndView viewproblems()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewproblems");
		
		return mv;
	}
	
	
}
