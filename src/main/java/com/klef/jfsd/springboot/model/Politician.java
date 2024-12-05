package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="politician_table")
public class Politician 
{
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name="pid",length = 50,unique = true,nullable = false)
  private int id;
  @Column(name="pname",length = 50, nullable = false)
  private String name;
  @Column(name="pgender",length = 50, nullable = false)
  private String gender;
  @Column(name="pdob",length = 50,nullable = false)
  private String dob;
  @Column(name="pstatus",length = 50,nullable = false,unique = false)
  private String status;
  @Column(name="pdesignation",length = 50,nullable = false)
  private String designation;
  @Column(name="pconstituency",length = 50,nullable = false)
  private String constituency;
  @Column(name="pemail",length = 50,unique = true,nullable = false)
  private String email;
  @Column(name="ppassword",length = 50,nullable = false)
  private String password;
  @Column(name="pcontactno",length = 50,nullable = false,unique = true)
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
  public String getGender() {
    return gender;
  }
  public void setGender(String gender) {
    this.gender = gender;
  }
  public String getDob() {
    return dob;
  }
  public void setDob(String dob) {
    this.dob = dob;
  }
  public String getStatus() {
    return status;
  }
  public void setStatus(String status) {
    this.status = status;
  }
  public String getDesignation() {
    return designation;
  }
  public void setDesignation(String designation) {
    this.designation = designation;
  }
  public String getConstituency() {
    return constituency;
  }
  public void setConstituency(String constituency) {
    this.constituency = constituency;
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