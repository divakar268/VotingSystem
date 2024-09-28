package com.gov.votingsystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gov.votingsystem.dao.CandidateDao;
import com.gov.votingsystem.dao.VoterDao;
import com.gov.votingsystem.entity.Candidate;
import com.gov.votingsystem.entity.Voter;

@Controller
public class CandidateController {

	@Autowired
	private CandidateDao dao;
	@RequestMapping("/addCandidate")
 public String addCandidate(Candidate cand,Model model)
 {
	 String message ="Your Application is Rejected..!!!";
	 if(cand.getAge()<24)
	 {
		 message+="Bcz Age is not matching..!!";
		 
	 }
	 else if(cand.getMonthly_income()>10000)
	 {
		 message+="Bcz monthly income is more..!!";
		 
	 }
	 else if(cand.getYearly_income()>120000)
	 {
		 message+="Bcz yearly income is more..!!";
		 
	 }
	 else if(cand.getTotal_property()>100000000)
	 {
		 message+="Bcz Total property is more..!!";
		 
	 }
	 else if(cand.getCriminal_background().equalsIgnoreCase("Yes"))
	 {
		 message+="Bcz You have criminalBackground..!!";
		 
	 }
	 else
	 {
		 message="Your Application is Approved..!!";
		 dao.addNewCandidate(cand);
		 model.addAttribute("check",true);
		 model.addAttribute("status", message);
		 return "ApplyCandidate";
	 }
	 model.addAttribute("status", message);
	 model.addAttribute("check", false);
	 return "ApplyCandidate"; 
 }
	@Autowired
	private VoterDao vDao;
	@RequestMapping("/addVote")
	public String addVote(String voter,String candidate,Model model)
	{
		dao.doVoting(candidate);
		vDao.changeStatus(voter);
		Candidate ca = dao.getCandidate(candidate);
		Voter v = vDao.getVoter(voter);
		model.addAttribute("name",ca.getFirst_name());
		model.addAttribute("voter",v);
		model.addAttribute("listOfCan",dao.getAllCandidates());
		return "VoterHome";
	}
	
	@RequestMapping("/viewAllCandidates")
	public String viewAllCandidates(Model model)
	{
		List<Candidate> alist = dao.getAllCandidate();
		model.addAttribute("allCandidates",alist);
		return "DisplayCandidates";
		
	}


}
