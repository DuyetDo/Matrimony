package com.fpt.aptech.matrimony.service;

import java.util.List;

import com.fpt.aptech.matrimony.model.UserProfile;


public interface UserProfileService {

	UserProfile findById(int id);

	UserProfile findByType(String type);
	
	List<UserProfile> findAll();
	
}
