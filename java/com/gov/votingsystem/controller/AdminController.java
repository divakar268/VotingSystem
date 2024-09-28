package com.gov.votingsystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gov.votingsystem.dao.AdminDao;
import com.gov.votingsystem.dao.CandidateDao;
import com.gov.votingsystem.entity.Admin;
import com.gov.votingsystem.entity.Candidate;

@Controller
public class AdminController {

	@Autowired
	private CandidateDao cDao;
	@Autowired
	private AdminDao dao;
	@RequestMapping("/adminLogin")
	public String adminLogin(String email_id,String password,Model model)
	{
		boolean status = dao.validateAdmin(email_id, password);
		if(status)
		{
			List<Candidate> lcan = cDao.getAllCandidates();
			Admin ad = dao.getAdmin(email_id);
			model.addAttribute("listOfCan", lcan);
			model.addAttribute("admin",ad);
			return "AdminHome";
		}
		else
		{
			model.addAttribute("loginStatus", "invalid credentials..!!");
			return "AdminSignin";
		}
	}
	@RequestMapping("/viewAllAdmins")
	public String viewAllAdmins(Model model)
	{
		List<Admin> alist = dao.getAllAdmins();
		model.addAttribute("allAdmins",alist);
		return "DisplayAdmin";
		
	}

	
}
