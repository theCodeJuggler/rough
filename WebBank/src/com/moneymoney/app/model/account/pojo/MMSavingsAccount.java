package com.moneymoney.app.model.account.pojo;

import com.moneymoney.framework.account.pojo.Customer;
import com.moneymoney.framework.account.pojo.SavingsAccount;

public class MMSavingsAccount extends SavingsAccount {

	//initializing the savings account class for zero balance account
	public MMSavingsAccount(Customer accountHolder, boolean salary) {
		super(accountHolder, salary);
	}

	//initializing the savings account class for normal account
	public MMSavingsAccount(Customer accountHolder, double accountBalance, boolean salary) {
		super(accountHolder, accountBalance, salary);
	}

	
}
