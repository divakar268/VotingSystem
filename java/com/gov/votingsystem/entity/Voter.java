package com.gov.votingsystem.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
@Entity
@NoArgsConstructor
@Data
@ToString
public class Voter {

	private String first_name;
	private String last_name;
	private String dob;
	private String gender;
	private String aadhar_no;
	private String pan_no;
	@Id
	private String email_id;
	private String mobile_no;
	private String address;
	private String user_name;
	private String password;
	@GeneratedValue(strategy = GenerationType.AUTO )
	private int id;// automatically the value must be generated for the users
	private String status;
	
}
