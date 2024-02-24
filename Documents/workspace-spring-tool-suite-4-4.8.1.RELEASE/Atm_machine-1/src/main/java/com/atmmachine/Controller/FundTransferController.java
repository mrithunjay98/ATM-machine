package com.atmmachine.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.atmmachine.Repository.AtmRepo;
import com.atmmachine.entity.CreateAccount;

@Controller
public class FundTransferController {
	
	@Autowired
	private AtmRepo repo;
	
	
	@RequestMapping("/fundTransferJsp")
	public String fundTranser() {
		
		
		return"verifyFundTransfer";
	}
	
	@RequestMapping("/fundTransfer")
	public String verifyTransfer(@ModelAttribute CreateAccount pin ,ModelMap map){
		long atmPin = pin.getAtmPin();
		long accountNumber = pin.getAccountNumber();
		
		CreateAccount findByaccount = repo.findByAccountNumber(accountNumber);
		
		map.addAttribute("user",findByaccount);
	    
	    if(findByaccount==null) {
	    	return"invalid_pin_tranfer";
	    	
	    }
	    
	    long accountNumber2 = findByaccount.getAccountNumber();
	    long atmPin2 = findByaccount.getAtmPin();
	    
	    if(atmPin==atmPin2&&accountNumber==accountNumber2) {
	    	map.addAttribute("user",findByaccount);
		return"tranfer_Details";
		}
		
	    return "invalid_pin_tranfer";

	}
	@RequestMapping("/transferUpdate")
	public String addAmount(@RequestParam("accountSender") long accountSender,
			                @RequestParam("accountReceiver") long accountReceiver,
			                @RequestParam("name") String name, 
			                 @RequestParam("amount") long amount  ,
			                 @RequestParam("atmPin") long atmPin 
			                 ,ModelMap map){
		
		
		
		
		CreateAccount sender = repo.findByAccountNumberAndAtmPin(accountSender,atmPin);
		CreateAccount receiver = repo.findByAccountNumber(accountReceiver);
		
		
	    if(receiver==null) {
	    	
	    	return "invalid_pin_tranfer";
	    	
	    }else {
	    	double senderBal = sender.getBalance();
	    	double receiverBal = receiver.getBalance();
	    	
	    	double senderBalUpdate=(senderBal-amount);
	    	double receiverBalUpdate=(receiverBal+amount);
	    	
	    	
	    	
	    	sender.setBalance(senderBalUpdate);
	    	receiver.setBalance(receiverBalUpdate);
	    	
	    	repo.save(sender);
	    	repo.save(receiver);
	    	
	    }
	    map.addAttribute("user",sender);
		return "Transfer_sucessful";

	}
	
	
}
