package com.gov.votingsystem.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
@Entity
@NoArgsConstructor
@Data
@ToString
public class Candidate {

	private String first_name;
	private String last_name;
	private String dob;
	private String gender;
	private int age;
	private String aadhar_no;
	private String pan_no;
	@Id
	private String email_id;
	private String mobile_no;
	private String address;
	private double monthly_income;
	private double yearly_income;
	private double total_property;
	private String criminal_background;
	private int votes;

}
