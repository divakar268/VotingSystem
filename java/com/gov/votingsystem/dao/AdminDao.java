package com.gov.votingsystem.dao;

import java.util.List;

import com.gov.votingsystem.entity.Admin;

public interface AdminDao {

	
	public boolean validateAdmin(String email_id, String password);

	public Admin getAdmin(String email_id);

	public List<Admin> getAllAdmins();
}
