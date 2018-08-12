package com.moneymoney.framework.account.dao;

import java.util.HashSet;
import java.util.Set;

import com.moneymoney.framework.account.pojo.BankAccount;

/**
 * @author Satyen Singh
 *
 *This is class for maintianing the list of all unique account objects.
 *
 *This was created from the warm heart. The Developers are From Capgemini.
 */
public abstract class BankAccountCollection implements BankAccountDAO {
	
	private static Set<BankAccount> bankAccountSet;
	
	//initializer to initialize the set only once at the start of executing the program
	static {
		bankAccountSet = new HashSet<>();
	}
	
	/* (non-Javadoc)
	 * @see com.moneymoney.framework.account.dao.BankAccountDAO#addBankAccount(com.moneymoney.framework.account.pojo.BankAccount)
	 */
	//adding record to the bank account set for adding an account
	@Override
	public void addBankAccount(BankAccount bankAccount) {
		bankAccountSet.add(bankAccount);
	}
	
	/* (non-Javadoc)
	 * @see com.moneymoney.framework.account.dao.BankAccountDAO#viewAll()
	 */
	//returning the set of bank accounts
	@Override
	public Set<BankAccount> viewAll(){
		return bankAccountSet;
	}
}
