package com.klef.jfsd.springboot.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Blob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Citizen;
import com.klef.jfsd.springboot.model.CitizenProblem;
import com.klef.jfsd.springboot.service.CitizenService;

import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CitizenController 
{
  @Autowired
  private CitizenService citizenService;
  
  @Autowired
  private JavaMailSender mailSender;
  
//  @GetMapping("cithome")
//  public ModelAndView cithome1()
//  {
//    ModelAndView mv= new ModelAndView();
//    mv.setViewName("cithome");
//    return mv;
//  }
  
  
  @GetMapping("citlogin")
  public ModelAndView citlogin()
  {
    ModelAndView mv=new ModelAndView();
    mv.setViewName("citlogin");
    return mv;
  }
  
  @GetMapping("citreg")
  public ModelAndView citreg()
  {
	  ModelAndView mv=new ModelAndView();
	  mv.setViewName("citreg");
	  return mv;
  }
  
  @PostMapping("insertcit")
  public ModelAndView insertcit(HttpServletRequest request)
  {
    String name = request.getParameter("cname");
    String gender = request.getParameter("cgender");
    String dob = request.getParameter("cdob");
    String email = request.getParameter("cemail");
    String password = request.getParameter("cpwd");
    String contactno = request.getParameter("ccontactno");
    String aadharnumber = request.getParameter("caadharnumber");
    
    Citizen cit = new Citizen();
    cit.setName(name);
    cit.setGender(gender);
    cit.setDob(dob);
    cit.setEmail(email);
    cit.setPassword(password);
    cit.setContactno(contactno);
    cit.setAadharnumber(aadharnumber);
    
    String msg = citizenService.CitizenRegistration(cit);
    
    ModelAndView mv = new ModelAndView("citregsuccess");
    mv.addObject("message", msg);
    
    return mv;
  }
  
  @PostMapping("checkcitlogin")
  public ModelAndView checkcitlogin(HttpServletRequest request)
  {
    ModelAndView mv = new ModelAndView();
    
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    
    Citizen cit = citizenService.checkcitlogin(email, password);
    
    if(cit != null)
    {
      HttpSession session = request.getSession();
      session.setAttribute("Citizen", cit);
      
      mv.setViewName("cithome");
    }
    else
    {
      mv.setViewName("citlogin");
      mv.addObject("message", "Login Failed");
    }
    return mv;
  }
    
  @GetMapping("cithome")
  public ModelAndView cithome()
  {
    ModelAndView mv=new ModelAndView();
    mv.setViewName("cithome");
    return mv; 
  }
  
  @GetMapping("citprofile")
  public ModelAndView citprofile()
  {
    ModelAndView mv=new ModelAndView();
    mv.setViewName("citprofile");
    return mv; 
  }
  

  @GetMapping("citcontactus")
  public ModelAndView citcontactus()
  {
    ModelAndView mv=new ModelAndView();
    mv.setViewName("citcontactus");
    return mv; 
  }
  
  @GetMapping("citlogout")
  public ModelAndView citlogout(HttpServletRequest request)
  {
    HttpSession session = request.getSession();
    session.removeAttribute("Citizen"); 
    
    ModelAndView mv = new ModelAndView();
    mv.setViewName("citlogin");
    return mv; 
  }
  
  @GetMapping("updatecit")
  public ModelAndView updatecit()
  {
	  ModelAndView mv = new ModelAndView();
	  mv.setViewName("updatecit");
	  return mv;
	  
  }
  
  @PostMapping("updatecitprofile")
  public ModelAndView updatecitprofile(HttpServletRequest request) {
      ModelAndView mv = new ModelAndView();

      try {
          int id = Integer.parseInt(request.getParameter("cid"));
          String name = request.getParameter("cname");
          String password = request.getParameter("cpwd");
          String contact = request.getParameter("ccontact");

          Citizen cit = new Citizen();
          cit.setId(id);
          cit.setName(name);
          cit.setPassword(password);
          cit.setContactno(contact);

          String msg = citizenService.updateCitizenProfile(cit);

          Citizen Citizen = citizenService.displayCitizenByID(id);

          HttpSession session = request.getSession();
          session.setAttribute("Citizen", Citizen);  // Ensure "Citizen" is used consistently

          mv.setViewName("updatesuccess");
          mv.addObject("message", msg);

      } catch (Exception e) {
          mv.setViewName("cupdateerror");
          mv.addObject("message", e);
      }

      return mv;
  }

  @GetMapping("citsessionexpiry")
  public ModelAndView citsessionexpiry()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("citsessionexpiry");
    return mv;
  }
 
  @GetMapping("citproblems")
	public ModelAndView citproblems()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("citproblems");
		return mv;
	}
	@PostMapping("insertproblem")
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

	        CitizenProblem p = new CitizenProblem();
	        p.setTitle(title);
	        p.setContent(content);
	        p.setImage(image);
	        p.setStatus(status);
	        
	        msg = citizenService.PostProblem(p);
	        System.out.println(msg);
	        
	        mv.setViewName("citproblemsuccess");
	        mv.addObject("message", msg);
	    } 
	    catch(Exception e)
	    {
	        msg = e.getMessage();
	        System.out.println(msg);
	        
	        mv.setViewName("citproblemerror");
	        mv.addObject("message", msg);
	    }
	    return mv;
	}
//	@GetMapping("viewproblems")
//	public ModelAndView viewproblems()
//	{
//		List<CitizenProblem> problemlist = citizenService.ViewAllProblems();
//		ModelAndView mv = new ModelAndView("viewproblems");
//		
//		mv.addObject("problemlist", problemlist);
//		
//		return mv;
//	}
	
	
	 @PostMapping("sendemail")
	 public ModelAndView sendEmail(HttpServletRequest request) throws Exception
	 {
	 String name = request.getParameter("name");
	 String toemail = request.getParameter("email");
	 String subject = request.getParameter("subject");
	 String msg = request.getParameter("message");
	 MimeMessage mimeMessage = mailSender.createMimeMessage();
	 MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);

	 int otp = (int)(Math.random() * 99999); // random number generation
	 helper.setTo(toemail);
	 helper.setSubject(subject);
	 helper.setFrom("loksambandh08@gmail.com");
	 String htmlContent =
	 "<h3>Contact Form Details</h3>" +
	 "<p><strong>Name:</strong> " + name + "</p>" +
	 "<p><strong>Email:</strong> " + toemail + "</p>" +
	 "<p><strong>Subject:</strong> " + subject + "</p>" +
	 "<p><strong>Message:</strong> " + msg + "</p>" +
	 "<p><strong>OTP:</strong> " + otp + "</p>";
	 helper.setText(htmlContent, true);
	 mailSender.send(mimeMessage);

	 ModelAndView mv = new ModelAndView("mailsuccess");
	 mv.addObject("message", "Email Sent Successfully");
	 return mv;
	 }
	
	
}
