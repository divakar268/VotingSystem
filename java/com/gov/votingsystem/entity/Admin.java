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
public class Admin {

	private String user_name;
	private String password;
	@Id
	private String email_id;
	private String mobile_no;
	
	
}
