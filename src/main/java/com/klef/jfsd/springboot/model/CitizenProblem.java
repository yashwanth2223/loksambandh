package com.klef.jfsd.springboot.model;

import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "problem_table")
public class CitizenProblem
{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id",length=50,unique=true,nullable = false)
	private int id;
	@Column(name="title",length = 50, nullable = false)
	private String title;
	@Column(name="content",nullable = false)
	private String content;
	@Column(name="image",nullable = false)
	private Blob image;
	 
	@Column(name="status",nullable = false)
	private String status;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Blob getImage() {
		return image;
	}
	public void setImage(Blob image) {
		this.image = image;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}