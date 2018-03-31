package com.daomy.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="account")
public class Account {

	@Id
	private String accountname;
	private String password;
	
	public Account(){
		
	}
	
	public Account(String accountname, String password) {
		super();
		this.accountname = accountname;
		this.password = password;
	}
	public String getAccountname() {
		return accountname;
	}
	public void setAccountname(String accountname) {
		this.accountname = accountname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
