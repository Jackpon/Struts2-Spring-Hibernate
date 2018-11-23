package com.jackpon.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {
	private int id;
	private String name;
	private String password;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)   
	@Column(name = "id", unique = true)
	public int getId() {
		return id;
	}
	@Column(name = "name", length =255)
	public String getName() {
		return name;
	}
	@Column(name = "password", length =255)
	public String getPassword() {
		return password;
	}

	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
