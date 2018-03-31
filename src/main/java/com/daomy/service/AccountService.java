package com.daomy.service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.daomy.dao.AccountRepository;
import com.daomy.model.Account;

@Service
@Transactional
public class AccountService implements AccountRe{
	private final AccountRepository accRepository;

	public AccountService(AccountRepository accRepository) {
		this.accRepository = accRepository;
	}
	
	@Override
	public Account findByAccountnameAndPassword(String accountname, String password) {
		return accRepository.findByAccountnameAndPassword(accountname, password);
	}

}
