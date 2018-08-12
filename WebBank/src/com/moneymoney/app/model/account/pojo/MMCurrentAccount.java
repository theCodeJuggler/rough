package com.moneymoney.app.model.account.pojo;

import com.moneymoney.framework.account.pojo.CurrentAccount;
import com.moneymoney.framework.account.pojo.Customer;

public class MMCurrentAccount extends CurrentAccount {

	//initializing the current account class by calling super class constructor
	public MMCurrentAccount(Customer accountHolder, double accountBalance, double odLimit) {
		super(accountHolder, accountBalance, odLimit);
	}

	
}
