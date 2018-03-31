package com.daomy.dao;

import org.springframework.data.repository.CrudRepository;

import com.daomy.model.Account;

public interface AccountRepository extends CrudRepository<Account, Integer>{
	
	public Account findByAccountnameAndPassword(String accountname, String password);

}
