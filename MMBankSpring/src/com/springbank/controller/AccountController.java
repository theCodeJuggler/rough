package com.springbank.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AccountController {
	
	BankAccountService service;
	
	@RequestMapping("addSavingsAccount")
	public String addSavingsAccount(
			@RequestParam("customerName") String customerName, @RequestParam("contactNumber") Long contactNumber,
			@RequestParam("email") String email, @RequestParam("dateOfBirth") LocalDate dateOfBirth,
			@RequestParam("address") String address, @RequestParam("nationality") String nationality,
			@RequestParam("gender") String gender, @RequestParam("salaried") String salaried,
			@RequestParam("initBal") String initBal,
			Model model) {
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("accountHolderName",customerName);	map.put("contactNo", contactNumber);
		map.put("email", email);	map.put("dateOfBirth", dateOfBirth);
		map.put("address", address);	map.put("gender", gender);
		map.put("initBal", initBal);	map.put("nationality", nationality);
		map.put("salaried", salaried);
		
		boolean isDob = doCheck((LocalDate)map.get("dateOfBirth"));
		boolean check = ((double)map.get("accountBalance")>=1000 )?true:false;
		
		if(isDob && check)
			service.createNewCurrentAccount(map);
		else
		{
			if(!isDob) {
				model.addAttribute("message", "You must be above 18 years and above");
				return "messagePage";
			}
			else {
				model.addAttribute("message", "Minimum balance of Rs. 5000.00 is required to open a Savings account !! Sorry");
				return "messagePage";
			}
		}
		
		return "addSavingsAccount";
	}
	
	@RequestMapping("addCurrentAccount")
	public String addCurrentAccount(
			@RequestParam("customerName") String customerName, @RequestParam("contactNumber") Long contactNumber,
			@RequestParam("email") String email, @RequestParam("dateOfBirth") LocalDate dateOfBirth,
			@RequestParam("address") String address, @RequestParam("overdraft") String overdraft,
			@RequestParam("gender") String gender, @RequestParam("accountBalance") String accountBalance,
			@RequestParam("nationality") String nationality,
			Model model) {
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("accountHolderName",customerName);	map.put("contactNo", contactNumber);
		map.put("email", email);	map.put("dateOfBirth", dateOfBirth);
		map.put("address", address);	map.put("gender", gender);
		map.put("nationality", nationality);	map.put("overdraft", overdraft);
		map.put("accountBalance", accountBalance);
		
		boolean isDob = doCheck((LocalDate)map.get("dateOfBirth"));
		boolean check = ((double)map.get("accountBalance")>=1000 )?true:false;
		
		if(isDob && check)
			service.createNewCurrentAccount(map);
		else
		{
			if(!isDob) {
				model.addAttribute("message", "You must be above 18 years and above");
				return "messagePage";
			}
			else {
				model.addAttribute("message", "Minimum balance of Rs. 10000.00 is required to open a Savings account !! Sorry");
				return "messagePage";
			}
		}		
		return "addCurrentAccount";
	}
	
	private boolean doCheck(LocalDate date) {
		LocalDate now = LocalDate.now();
		return (now.getYear()-date.getYear()>=18)?true:false;
	}
	
	@RequestMapping("updtAccount")
	public String updtAccount(@RequestParam("accNo") String accNo ) {
		
		service.getAccountById(Integer.parseInt(request.getParameter("accNo"))).getAccountHolder()
		.setCustomerName(request.getParameter("name"));
		service.getAccountById(Integer.parseInt(request.getParameter("accNo"))).getAccountHolder()
		.setEmailId(request.getParameter("email"));
		service.getAccountById(Integer.parseInt(request.getParameter("accNo"))).getAccountHolder()
		.setContactNumber(Long.parseLong(request.getParameter("contactNumber")));
		service.getAccountById(Integer.parseInt(request.getParameter("accNo"))).getAccountHolder().setDateOfBirth(
				LocalDate.parse(request.getParameter("dateOfBirth"), DateTimeFormatter.ofPattern("yyyy-MM-dd")));

		return "updtAccount";
	}
	
	
}
