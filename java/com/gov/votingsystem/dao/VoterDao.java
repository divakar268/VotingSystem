package com.gov.votingsystem.dao;

import java.util.List;

import com.gov.votingsystem.entity.Voter;

public interface VoterDao {

	public void addVoter(Voter voter);

	public boolean validateVoter(String email_id, String password);

	public Voter getVoter(String email_id);

	public void changeStatus(String voter);

	public List<Voter> getAllVoters();
	public boolean removeVoter(String email_id);
}
