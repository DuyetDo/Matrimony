package com.fpt.aptech.matrimony.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fpt.aptech.matrimony.model.AppUserFee;
import com.fpt.aptech.matrimony.service.AppUserFeeService;


@Controller
@RequestMapping("/")
@SessionAttributes(value = {"loggedinuser"})
public class AppUserFeeController {

	@Autowired
	AppUserFeeService aufService;

	@Autowired
	MessageSource messageSource;

	@RequestMapping(value = { "/feesList" }, method = RequestMethod.GET)
	public String listFees(ModelMap model) {
		List<AppUserFee> aufs = aufService.findAll();
		model.addAttribute("aufList", aufs);
		model.addAttribute("loggedinuser", getPrincipal());
		return "managementFee";
	}

	/**
	 * This method returns the principal[user-name] of logged-in user.
	 */
	private String getPrincipal() {
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails) principal).getUsername();
		} else {
			userName = principal.toString();
		}
		return userName;
	}
	
}