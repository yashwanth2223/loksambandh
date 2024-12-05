package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="citizen_table")
public class Citizen
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="cid",length=50,nullable = false, unique = true)
	private int id;
	@Column(name="cname",length = 50, nullable = false)
	private String name;
	@Column(name="cdob",length = 50,nullable = false)
	private String dob;
	@Column(name="cgender",length = 50,nullable = false)
	private String gender;
	@Column(name="caadharnumber",length = 50, nullable = false,unique = true)
	private String aadharnumber;
	@Column(name="cemail",length = 50, nullable = false, unique = true)
	private String email;
	@Column(name="cpassword",length = 50, nullable = false)
	private String password;
	@Column(name="ccontactno",length = 50,nullable = false,unique = true)
	private String contactno;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAadharnumber() {
		return aadharnumber;
	}
	public void setAadharnumber(String aadharnumber) {
		this.aadharnumber = aadharnumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	

	
	
}