package com.springbank.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TransactionController {
	
	@RequestMapping("/deposit")
	public String deposit(@RequestParam("accountNo") String accountNo, @RequestParam("amount") String amount) {
		
		return "deposit";
	}
	
	@RequestMapping("/withdraw")
	public String withdraw(@RequestParam("accountNo") String accountNo, @RequestParam("amount") String amount) {
		
		return "withdraw";
	}
	
	@RequestMapping("/fundTransfer")
	public String fundTransfer(@RequestParam("senderAccountNo") String senderAccountNo, @RequestParam("recieverAccountNo") String recieverAccountNo, @RequestParam("amount") String amount) {
		
		return "fundTransfer";
	}

}
