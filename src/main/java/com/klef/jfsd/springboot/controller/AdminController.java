package com.klef.jfsd.springboot.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.CitizenProblem;
import com.klef.jfsd.springboot.model.Politician;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.PoliticianService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController
{
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private PoliticianService politicianService;

	
	@GetMapping("adminhome")
	public ModelAndView adminhome()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminhome");
		return mv;
	}
	
	@GetMapping("adminlogin")
    public ModelAndView adminlogin()
    {
      ModelAndView mv = new ModelAndView();
      mv.setViewName("adminlogin");
      return mv;
    }
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv= new ModelAndView();
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		Admin admin = adminService.checkadminlogin(username, password);
		
		if(admin != null)
		{
			mv.setViewName("adminhome");
			
		}
		else
		{
			mv.setViewName("adminloginfail");
			mv.addObject("message", "Login Fail");
		}
		return mv;
	}
	
	@GetMapping("politicianreg")
	public ModelAndView politicianreg()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("politicianreg");
		return mv;
	}
	
	@PostMapping("insertpolitician")
	public ModelAndView insertPolitician(HttpServletRequest request) {
	    String name = request.getParameter("pname");
	    String gender = request.getParameter("pgender");
	    String dob = request.getParameter("pdob");
	    String status = request.getParameter("pstatus");
	    String designation = request.getParameter("pdesignation"); 
	    String constituency = request.getParameter("pconstituency"); 
	    String email = request.getParameter("pemail");
	    String password = request.getParameter("ppassword");
	    String contact = request.getParameter("pcontactno");

	    Politician p = new Politician();
	    p.setName(name);
	    p.setGender(gender);
	    p.setDob(dob);
	    p.setStatus(status);
	    p.setDesignation(designation);
	    p.setConstituency(constituency);
	    p.setEmail(email);
	    p.setPassword(password);
	    p.setContactno(contact);

	    String msg = politicianService.PoliticanRegistration(p);

	    ModelAndView mv = new ModelAndView("regsuccess");
	    mv.addObject("message", msg);

	    return mv;
	}
	

	  @GetMapping("adminloginfail")
      public ModelAndView adminlogout()
      {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("adminloginfail");     
        return mv;
      }
	
	  @GetMapping("viewallpoliticians")
	  public ModelAndView viewallpoliticians()
	  {
		  ModelAndView mv=new ModelAndView();
		  List<Politician> pinlist = adminService.ViewAllPoliticians();
		  mv.setViewName("viewallpoliticians");
		  mv.addObject("pinlist", pinlist);
		  
		  long count = adminService.pincount();
		  mv.addObject("count", count);
		  
		  return mv;
	  }
	@GetMapping("adminlogout")
	public ModelAndView adminlogout(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		session.removeAttribute("admin");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@GetMapping("viewproblems1")
	public ModelAndView viewproblems()
	{
		ModelAndView mv = new ModelAndView();
		List<CitizenProblem> cplist = adminService.ViewProblems();
		mv.setViewName("viewproblems");
		mv.addObject("cplist", cplist);
		
		long count = adminService.cpcount();
		mv.addObject("count", count);
		
		return mv;
	}
	
	@GetMapping("displayprobimage")
	public ResponseEntity<byte[]> displayprobimage(@RequestParam int id) throws Exception {
		CitizenProblem sq = adminService.ViewProblemByID(id);
		
		byte[] imgbyte = null;
		imgbyte = sq.getImage().getBytes(1, (int) sq.getImage().length());
		
		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imgbyte);
	}
	
	@GetMapping("deletepoli")
	public ModelAndView deletepoli()
	{
		ModelAndView mv = new ModelAndView();
		List<Politician> plist = adminService.ViewAllPoliticians();
		mv.setViewName("deletepoli");
		mv.addObject("plist", plist);
		return mv;
	}
	
	@GetMapping("delete")
	public String deleteoperation(@RequestParam("id") int pid)
	{
		adminService.deletepoli(pid);
		return "redirect:/deletepoli";
	}
}
