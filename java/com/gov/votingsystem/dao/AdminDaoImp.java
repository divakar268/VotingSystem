package com.gov.votingsystem.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.gov.votingsystem.entity.Admin;
import com.gov.votingsystem.repository.AdminRepository;

@Component
public class AdminDaoImp implements AdminDao {

	@Autowired
	private AdminRepository adminRepo;
	@Override
	public boolean validateAdmin(String email_id, String password) {
		Optional<Admin> opt=adminRepo.findById(email_id);
		if(opt.isPresent())
		{
			Admin a  = opt.get();
			if(a.getPassword().equalsIgnoreCase(password))
			{
				return true;
			}
		}
		return false;
	}

	@Override
	public Admin getAdmin(String email_id) {
	
		return adminRepo.findById(email_id).get();
	}

	@Override
	public List<Admin> getAllAdmins() {
		
		return adminRepo.findAll();
	}

}
