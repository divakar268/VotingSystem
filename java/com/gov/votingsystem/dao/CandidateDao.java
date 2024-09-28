package com.gov.votingsystem.dao;

import java.util.List;

import com.gov.votingsystem.entity.Candidate;

public interface CandidateDao
 {
void addNewCandidate(Candidate cand);
public List<Candidate> getAllCandidates();

public void doVoting(String candidate);

public Candidate getCandidate(String candidate);

 public List<Candidate> getAllCandidate();

}
