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
public class VotingController {

	@RequestMapping("/displayHome")
	public String displayHome()
	{
		return "index";
	}
	
	@Autowired
	private VoterDao dao;
	@RequestMapping("/signup")
	public String signup(Voter voter, Model model)
	{
		
		dao.addVoter(voter);
		model.addAttribute("message", "Registration is successfully....!");
		return "NewVoterRegistration";
	}
	
	@Autowired
	private CandidateDao canDao;

	@RequestMapping("/voterLogin")
	public String voterLogin(String email_id,String password,Model model)
	{
		boolean status=dao.validateVoter(email_id,password);
		if(status)
		{
			Voter vtr = dao.getVoter(email_id);
			List<Candidate> ls = canDao.getAllCandidates();
			model.addAttribute("voter",vtr);
			model.addAttribute("listOfCan",ls);
 			return "VoterHome";
		}
		else
		{
			model.addAttribute("loginStatus", "invalid credentials...");
			return "VoterSignin";
		}
	}
	
	@RequestMapping("/viewAllVoters")
	public String viewAllVoters(Model model)
	{
		List<Voter> alist = dao.getAllVoters();
		model.addAttribute("allVoters",alist);
		return "DisplayVoters";
		
	}
	@RequestMapping("/del")
	public String delete(String email_id,Model m)
	{
		if(dao.removeVoter(email_id)) {
		m.addAttribute("status", " record is Delete");
		return "DisplayVoters";
		}
		else
		{
			m.addAttribute("status", "No record Deleted");
		}
		return "DisplayVoters";
		
	}
	
}
