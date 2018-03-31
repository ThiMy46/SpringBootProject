package com.daomy.service;

import com.daomy.model.Account;

public interface AccountRe {
	public Account findByAccountnameAndPassword(String accountname, String password);

}
