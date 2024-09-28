package com.gov.votingsystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gov.votingsystem.entity.Admin;

public interface AdminRepository extends JpaRepository<Admin, String> {

}
