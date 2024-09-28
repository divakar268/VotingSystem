package com.gov.votingsystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gov.votingsystem.entity.Candidate;

public interface CandidateRepository extends JpaRepository<Candidate, String> {

}
