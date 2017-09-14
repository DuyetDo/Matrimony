package com.fpt.aptech.matrimony.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fpt.aptech.matrimony.model.FriendsRequest;
import com.fpt.aptech.matrimony.service.FriendsRequestService;

@Controller
@RequestMapping("/")
@SessionAttributes(value = {"loggedinuser"})
public class FriendsRequestController {
	
	@Autowired
	FriendsRequestService frqService;

	@Autowired
	MessageSource messageSource;
	
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
	
	@RequestMapping(value = { "/friendsList" }, method = RequestMethod.GET)
	public String listFriends(ModelMap model, String userName) {
		List<FriendsRequest> flist = frqService.findListFriend(userName);
		model.addAttribute("friendsList", flist);
		model.addAttribute("loggedinuser", getPrincipal());
		return "friendsList";
	}
	
	@RequestMapping(value = { "/request-{userRequest}-{userReceive}" }, method = RequestMethod.POST)
	public String request(ModelMap model,@PathVariable String userRequest,@PathVariable String userReceive){
		
		FriendsRequest frq = new FriendsRequest();
		
		if(userRequest != null){
			frq.setUserRequest(userRequest);
		}
		
		if(userReceive != null){
			frq.setUserReceive(userReceive);
		}
		
		frqService.save(frq);
		
		return "timeline";
	}

}
