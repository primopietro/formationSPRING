package com.demo.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.demo.model.Account;

@Controller
public class MyDemoController {

	@RequestMapping(value="/createAccount")
	public String createAccount(@Valid @ModelAttribute ("aNewAccount") Account anAccount, BindingResult result){
		
		
		
		if(result.hasErrors()){
			System.out.println("Form has errors");
			return "createAccount";
		}
		
		System.out.println("Form validated");
		System.out.println(anAccount.getFirstName() + " " + anAccount.getLastName());
		return "createAccount";
	}
}
