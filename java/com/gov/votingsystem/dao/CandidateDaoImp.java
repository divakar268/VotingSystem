package com.gov.votingsystem.dao;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.gov.votingsystem.entity.Candidate;

import com.gov.votingsystem.repository.CandidateRepository;
@Component
public class CandidateDaoImp implements CandidateDao {

	@Autowired
	private CandidateRepository candRepo;
	
	@Override
	public void addNewCandidate(Candidate cand) {
		
		candRepo.save(cand);
	}
	@Override
	public List<Candidate> getAllCandidates() {
		return candRepo.findAll();
	}
	@Override
	public void doVoting(String candidate) {
		
		Candidate candi = candRepo.findById(candidate).get();
		candi.setVotes(candi.getVotes()+1);
		candRepo.save(candi);
	}
	@Override
	public Candidate getCandidate(String candidate) {
		Candidate candi = candRepo.findById(candidate).get();
		return candi;
	}
	@Override
	public List<Candidate> getAllCandidate() {
		return candRepo.findAll();
	}

	
}
