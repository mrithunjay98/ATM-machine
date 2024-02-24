package com.atmmachine.Controller;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.atmmachine.Repository.AtmRepo;
import com.atmmachine.entity.CreateAccount;


import ch.qos.logback.core.model.Model;

@Controller
public class AtmController {
	
@Autowired
private AtmRepo repo;



	
	@RequestMapping("/create")
	public String createAccount() {
		
		
		return"create";
	}
	
	
	@RequestMapping("/save")
	public String saveDetails(@ModelAttribute("save") CreateAccount account,ModelMap m) {
		String mobile = account.getMob();
		long id = account.getId();
		//input details
				//long atmPin3 = findByatmPin.getAtmPin();
				
				
				//long atmPin2 = account.getAtmPin();
				String mob2 = account.getMob();
				String name2 = account.getName();
		CreateAccount findByatmPin = repo.findByMob(mobile);
		
	
		 if (findByatmPin ==null) {
		        Random random = new Random();
		        int randomNumber = 100000 + random.nextInt(900000);
		        account.setAccountNumber(randomNumber);
		        
		        CreateAccount save = repo.save(account);
		        m.addAttribute("user", save);
		        return "RespondCreatedDetails";
		    }
		 
		//database details
		  String mob = findByatmPin.getMob();
			String name = findByatmPin.getName();
		 
		  if (mob2.equals(mob) && name.equals(name2)|| mob2.equals(mob)) {
		        return "alreadyAccount";
		    } else {
		        return null;
		    }
			 
			
		}
		
			
		
		


	
	
	@RequestMapping("/enterPin")
	public String authorise() {
		
		
		return"verifypin_Withdraw";
	}
	
	
	@RequestMapping("/verifyPin/withdraw/Amount")
	public String fetch(@ModelAttribute CreateAccount pin ,ModelMap map){
		long atmPin = pin.getAtmPin();
		long accountNumber = pin.getAccountNumber();
		
		CreateAccount findByaccount = repo.findByAccountNumber(accountNumber);
		
		map.addAttribute("user",findByaccount);
	    
	    if(findByaccount==null) {
	    	return"invalid_pin";
	    	
	    }
	    
	    long accountNumber2 = findByaccount.getAccountNumber();
	    long atmPin2 = findByaccount.getAtmPin();
	    
	    
	    
	    if(atmPin==atmPin2&&accountNumber==accountNumber2) {
	    
		return"Verified_WithdrawlAmount_response";
		
	    }
		
	    return "invalid_pin";

	}
	
	
	@RequestMapping("/changePIn")
	public String changePin() {
		
		
		return"change_Pin";
	}
	
	
	
	
	@RequestMapping("/ChangePin")
	public String changePin(@RequestParam("currentPin") long currentPin,@RequestParam("newPin") long newPin  ,ModelMap map){
		
		
		System.out.println("current"+currentPin);
		System.out.println("new"+newPin);
		CreateAccount findByatmPin = repo.findByatmPin(currentPin);
		map.addAttribute("user",findByatmPin);
	    
	    if(findByatmPin==null) {
	    	
	    	return"change_Pin2";
	    	
	    }else {
	    	
	    	findByatmPin.setAtmPin(newPin);
	    	
	    	repo.save(findByatmPin);
	    }
		return"RespondChangePin";

	}
	@RequestMapping("/withdrawDetails")
	public String withdraw() {
		
		
		return"withdraw";
	}
	
	
	@RequestMapping("/withdraw_Amount")
	public String withdraw(@RequestParam("amount") long amount,@RequestParam("atmPin") long atmPin  ,ModelMap map){
		
		
		System.out.println("pin___"+atmPin);
		System.out.println(" amount "+amount);
		
		CreateAccount findByatmPin = repo.findByatmPin(atmPin);
		map.addAttribute("user",findByatmPin);
		
		map.addAttribute("amount",amount);
		
		
	    if(findByatmPin==null) {
	    	
	    	return"withdraw_invalidPin";
	    	
	    }else {
	    	double balance = findByatmPin.getBalance();
	    	findByatmPin.setBalance(balance-amount);
	    	
	    	
	    	repo.save(findByatmPin);
	    	
	    }
	    double balance = findByatmPin.getBalance();
	    if(amount>balance) {
	    	
			return"Insufficient_funds";
			
		}
		return"withdraw_response";
		
	}
	
	
	@RequestMapping("/addMoney")
	public String addAccount() {
		
		
		return"verifypin_AddAmount";
	}
	
	@RequestMapping("/add")
	public String addAccoun() {
		
		
		return"AddAmount";
	}
	
	
	
	@RequestMapping("/verifyPin/AddAmount")
	public String verify(@ModelAttribute CreateAccount pin ,ModelMap map){
		long atmPin = pin.getAtmPin();
		long accountNumber = pin.getAccountNumber();
		
		CreateAccount findByaccount = repo.findByAccountNumber(accountNumber);
		
		map.addAttribute("user",findByaccount);
	    
	    if(findByaccount==null) {
	    	return"invalid_pin";
	    	
	    }
	    
	    long accountNumber2 = findByaccount.getAccountNumber();
	    long atmPin2 = findByaccount.getAtmPin();
	    
	    if(atmPin==atmPin2&&accountNumber==accountNumber2) {
	    
		return"Verified_Addamount_response";}
		
	    return "invalid_pin2";

	}
	@RequestMapping("/addAmount")
	public String addAmount(@RequestParam("atmPin") long Pin,@RequestParam("amount") long amount  ,ModelMap map){
		
		
		System.out.println("pin"+Pin);
		System.out.println(" amount "+amount);
		CreateAccount findByatmPin = repo.findByatmPin(Pin);
		map.addAttribute("user",findByatmPin);
		
		map.addAttribute("amount",amount);
	    if(findByatmPin==null) {
	    	
	    	return"AddAmount_invalidpin";
	    	
	    }else {
	    	double balance = findByatmPin.getBalance();
	    	findByatmPin.setBalance(balance+amount);
	    	
	    	System.out.println(balance-amount);
	    	repo.save(findByatmPin);
	    }
		return"addamount_response";

	}
	
	@RequestMapping("/checkBalanceLink")
	public String checkBalance() {
		
		
		return"check_balance";
	}
	
	
	@RequestMapping("/checkBalance")
	public String checkBalance(@ModelAttribute CreateAccount pin ,ModelMap map){
		long atmPin = pin.getAtmPin();
		long accountNumber = pin.getAccountNumber();
		
		CreateAccount findByaccount = repo.findByAccountNumber(accountNumber);
		
		map.addAttribute("user",findByaccount);
	    
	    if(findByaccount==null) {
	    	return"invalid_pin_checkBalance";
	    	
	    }
	    
	    long accountNumber2 = findByaccount.getAccountNumber();
	    long atmPin2 = findByaccount.getAtmPin();
	    
	    
	    
	    if(atmPin==atmPin2&&accountNumber==accountNumber2) {
	    
		return"check_balance_response";
		
	    }
		
	    return "invalid_pin_checkBalance";

	}
	
	
	
}
