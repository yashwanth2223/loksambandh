package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="admin_table")
public class Admin
{
  @Id
  @Column(name="username",length=50,unique = true)
  private String username;
  @Column(name="password",nullable = false,length=50)
  private String password;
  
  public String getUsername()
  {
    return username;
  }
  public void setUsername(String username)
  {
    this.username = username;
  }
  public String getPassword()
  {
    return password;
  }
  public void setPassword(String password) 
  {
    this.password = password;
  }
}