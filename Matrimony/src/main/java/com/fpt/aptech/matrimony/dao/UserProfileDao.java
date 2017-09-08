package com.fpt.aptech.matrimony.dao;

import java.util.List;

import com.fpt.aptech.matrimony.model.UserProfile;

public interface UserProfileDao {

	List<UserProfile> findAll();
	
	UserProfile findByType(String type);
	
	UserProfile findById(int id);
}
