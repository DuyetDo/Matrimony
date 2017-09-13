package com.fpt.aptech.matrimony.controller;


import java.util.Calendar;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fpt.aptech.matrimony.model.User;
import com.fpt.aptech.matrimony.model.UserProfile;
import com.fpt.aptech.matrimony.service.UserProfileService;
import com.fpt.aptech.matrimony.service.UserService;


@Controller
@RequestMapping("/")
@SessionAttributes(value = { "roles", "loggedinuser", "userinfo"})
public class AppController {

	@Autowired
	UserService userService;

	@Autowired
	UserProfileService userProfileService;

	@Autowired
	MessageSource messageSource;

	@Autowired
	PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;

	@Autowired
	AuthenticationTrustResolver authenticationTrustResolver;

	@RequestMapping(value = { "/" })
	public String GoToIndex(ModelMap model) {
		model.addAttribute("loggedinuser", getPrincipal());
		return "timeline";
	}
	
	@RequestMapping(value = { "/search-user-{keyword}" })
	public String search(@PathVariable String keyword, ModelMap model) {
		List<User> users = userService.findFriends(keyword);
		model.addAttribute("friends", users);
		model.addAttribute("loggedinuser", getPrincipal());
		return "search";
	}
	

	/**
	 * This method will list all existing users.
	 */
	@RequestMapping(value = { "/usersList" }, method = RequestMethod.GET)
	public String listUsers(ModelMap model) {

		List<User> users = userService.findAllUsers();
		model.addAttribute("users", users);
		model.addAttribute("loggedinuser", getPrincipal());
		return "managementUser";
	}
	
	@RequestMapping(value = { "/registration" }, method = RequestMethod.GET)
	public String signup(ModelMap model) {
		User user = new User();
		model.addAttribute("signup", user);
		return "signup";
	}
	
	@RequestMapping(value = { "/registration" }, method = RequestMethod.POST)
	public String register(@Valid User user, BindingResult result, ModelMap model) {
		
		Calendar now = Calendar.getInstance();
		
		if(user.getType() == 1){
		    now.add(Calendar.DATE, 30);
		    user.setEndDatetime(now.getTime());
		}else if(user.getType() == 2){
			now.add(Calendar.DATE, 365);
		    user.setEndDatetime(now.getTime());
		}
		
		if("1".equals(user.getGender())){
			user.setGender("Male");
		}
		
		if("0".equals(user.getGender())){
			user.setGender("Female");
		}
		
		if (result.hasErrors()) {
			return "signup";
		}

		if (!userService.isUserSSOUnique(user.getSsoId())) {
			FieldError ssoError = new FieldError("user", "ssoId", messageSource.getMessage("non.unique.ssoId",
					new String[] { user.getSsoId() }, Locale.getDefault()));
			result.addError(ssoError);
			return "signup";
		}

		userService.saveUser(user);

		model.addAttribute("signup", user);
		return "signup";
	}

	/**
	 * This method will provide the medium to add a new user.
	 */
	@RequestMapping(value = { "/newuser" }, method = RequestMethod.GET)
	public String newUser(ModelMap model) {
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("edit", false);
		model.addAttribute("loggedinuser", getPrincipal());
		return "index";
	}

	/**
	 * This method will be called on form submission, handling POST request for
	 * saving user in database. It also validates the user input
	 */
	@RequestMapping(value = { "/newuser" }, method = RequestMethod.POST)
	public String saveUser(@Valid User user, BindingResult result, ModelMap model) {

		if (result.hasErrors()) {
			return "index";
		}

		if (!userService.isUserSSOUnique(user.getSsoId())) {
			FieldError ssoError = new FieldError("user", "ssoId", messageSource.getMessage("non.unique.ssoId",
					new String[] { user.getSsoId() }, Locale.getDefault()));
			result.addError(ssoError);
			return "index";
		}

		userService.saveUser(user);

		model.addAttribute("user", user);
		model.addAttribute("usersuccess",
				"User " + user.getFirstName() + " " + user.getLastName() + " registered successfully");
		model.addAttribute("loggedinuser", getPrincipal());
		return "index";
	}

	/**
	 * This method will provide the medium to update an existing user.
	 */
	@RequestMapping(value = { "/edit-user-{id}" }, method = RequestMethod.GET)
	public String editUser(@PathVariable int id, ModelMap model) {
		User user = userService.findById(id);
		model.addAttribute("user", user);
		model.addAttribute("edit", true);
		model.addAttribute("loggedinuser", getPrincipal());
		return "index";
	}

	/**
	 * This method will be called on form submission, handling POST request for
	 * updating user in database. It also validates the user input
	 */
	@RequestMapping(value = { "/edit-user-{id}" }, method = RequestMethod.POST)
	public String updateUser(@Valid User user, BindingResult result, ModelMap model, @PathVariable int id) {

		if (result.hasErrors()) {
			return "index";
		}

		userService.updateUser(user);
		
		model.addAttribute("edit_user", user);
		model.addAttribute("usersuccess",
				"Thành viên " + user.getFirstName() + " " + user.getLastName() + " đã được thay đổi thông tin.");
		model.addAttribute("loggedinuser", getPrincipal());
				
		if (user.getSsoId().equals(getPrincipal())) {
			return "index";
		} else {
			return "redirect:/logout";
		}
		
	}

	/**
	 * This method will delete an user by it's SSOID value.
	 */
	@RequestMapping(value = { "/delete-user-{id}" }, method = RequestMethod.GET)
	public String deleteUser(@PathVariable int id) {
		userService.deleteUserById(id);
		return "redirect:/usersList";
	}

	/**
	 * This method will provide UserProfile list to views
	 */
	@ModelAttribute("roles")
	public List<UserProfile> initializeProfiles() {
		return userProfileService.findAll();
	}
	
	/**
	 * This method will provide user info to views
	 */
	@RequestMapping(value = { "/userInfo" }, method = RequestMethod.GET)
	public String infoUser(ModelMap model) {
		User user = userService.findBySSO(getPrincipal());
		model.addAttribute("userinfo", user);
			return "timelineAbout";
	}

	/**
	 * This method handles Access-Denied redirect.
	 */
	@RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
	public String accessDeniedPage(ModelMap model) {
		model.addAttribute("loggedinuser", getPrincipal());
		return "accessDenied";
	}

	/**
	 * This method handles login GET requests. If users is already logged-in and
	 * tries to goto login page again, will be redirected to list page.
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage() {
		if (isCurrentAuthenticationAnonymous()) {
			return "index";
		} else {
			return "redirect:/";
		}
	}

	/**
	 * This method handles logout requests. Toggle the handlers if you are
	 * RememberMe functionality is useless in your app.
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			persistentTokenBasedRememberMeServices.logout(request, response, auth);
			SecurityContextHolder.getContext().setAuthentication(null);
		}
		return "redirect:/login?logout";
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
	
	/**
	 * This method returns true if users is already authenticated [logged-in],
	 * else false.
	 */
	private boolean isCurrentAuthenticationAnonymous() {
		final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		return authenticationTrustResolver.isAnonymous(authentication);
	}
	
}