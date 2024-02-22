package com.atmmachine.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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
		long atmPin = account.getAtmPin();
		long id = account.getId();
		System.out.print(atmPin);
		CreateAccount findByatmPin = repo.findByatmPin(atmPin);
		
		if(findByatmPin==null) {
			CreateAccount save = repo.save(account);
			m.addAttribute("user",save);
			return"RespondAccountDetails";
		}else {
			
		findByatmPin.setName(account.getName());
		findByatmPin.setBalance(account.getBalance());
		findByatmPin.setCity(account.getCity());
		findByatmPin.setMob(account.getMob());
		
		CreateAccount save = repo.save(findByatmPin);
		m.addAttribute("user",save);
		return"RespondAccountDetails";
		}
	}
	
	
	@RequestMapping("/enterPin")
	public String authorise() {
		
		
		return"verifypin";
	}
	
	
	@RequestMapping("/verifyPin")
	public String fetch(@ModelAttribute CreateAccount pin ,ModelMap map){
		Long atmPin = pin.getAtmPin();
		System.out.println(atmPin);
		CreateAccount findByatmPin = repo.findByatmPin(atmPin);
		map.addAttribute("user",findByatmPin);
	    
	    if(findByatmPin==null) {
	    	return"invalid_pin";
	    	
	    }
	    
		return"RespondAccountDetailsByPin";

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
	
	
	@RequestMapping("/withdraw")
	public String withdraw(@RequestParam("atmPin") long Pin,@RequestParam("amount") long amount  ,ModelMap map){
		
		
		System.out.println("pin"+Pin);
		System.out.println(" amount "+amount);
		CreateAccount findByatmPin = repo.findByatmPin(Pin);
		map.addAttribute("user",findByatmPin);
		
		map.addAttribute("amount",amount);
	    if(findByatmPin==null) {
	    	
	    	return"withdraw_invalidPin";
	    	
	    }else {
	    	double balance = findByatmPin.getBalance();
	    	findByatmPin.setBalance(balance-amount);
	    	
	    	System.out.println(balance-amount);
	    	repo.save(findByatmPin);
	    }
		return"withdraw_response";
		
	}
	
	
	@RequestMapping("/addMoney")
	public String addAccount() {
		
		
		return"AddAmount1";
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
}
