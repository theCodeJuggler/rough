package com.moneymoney.app.model.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import com.moneymoney.app.model.dao.MMBankCollection;
import com.moneymoney.app.model.factory.MMBankFactory;
import com.moneymoney.framework.account.dao.BankAccountCollection;
import com.moneymoney.framework.account.pojo.BankAccount;
import com.moneymoney.framework.account.pojo.Customer;
import com.moneymoney.framework.service.BankAccountService;

public class MMBankAccountService extends BankAccountService {

	BankAccountCollection collection;
	
	//non-arg constructor
	public MMBankAccountService() {
		super();
		collection = new MMBankCollection();
	}

	//calling the addBankAccount method of the dao to add an account
	@Override
	public void createNewSavingsAccount(Map<String, Object> account) {
		collection.addBankAccount(new MMBankFactory().createNewSavingsAccount(account));
	}

	//calling the addBankAccount method of the dao to add an account
	@Override
	public void createNewCurrentAccount(Map<String, Object> account) {
		collection.addBankAccount(new MMBankFactory().createNewCurrentAccount(account));
	}

	//returning all the records from collection for viewing
	@Override
	public Collection<BankAccount> getAllAccounts() {
		return collection.viewAll();
	}

	//for viewing the list of customers
	@Override
	public Collection<Customer> getAllCustomers() {
		List<Customer> listOfCustomer = new ArrayList<>();
		(collection.viewAll()).stream().forEach((element) -> listOfCustomer.add(element.getAccountHolder()));
		return listOfCustomer;
	}

	//retrieving account by ID
	@Override
	public BankAccount getAccountById(int id) {
		for (BankAccount account : collection.viewAll()) {
			if (account.getAccountNumber() == id)
				return account;
		}
		return null;

	}
	
	//implementing the withdrawing logic
	public int withdraw(int accNo, double amount) {
		BankAccount account = getAccountById(accNo);
		double amountBefore = account.getAccountBalance();
		account.withdraw(amount);

		if (amountBefore == account.getAccountBalance())
			return -1;
		else
			return 1;
	}

	//implementing the fund transfer logic
	@Override
	public int fundTransfer(int accNoSender, int accNoReciever, double amount) {		
		BankAccount account = getAccountById(accNoSender);
		double amountBefore = account.getAccountBalance();
		account.withdraw(amount);
		if (amountBefore == account.getAccountBalance())
			return -1;
		else
		{
			account = getAccountById(accNoReciever);
			account.deposit(amount);
			return 1;
		}
		
	}
}
