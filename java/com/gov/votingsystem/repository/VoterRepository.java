package com.gov.votingsystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gov.votingsystem.entity.Voter;

public interface VoterRepository  extends JpaRepository<Voter, String>{
	

}
