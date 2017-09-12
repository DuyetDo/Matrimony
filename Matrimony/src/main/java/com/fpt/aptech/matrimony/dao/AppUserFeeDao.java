package com.fpt.aptech.matrimony.dao;

import java.util.List;

import com.fpt.aptech.matrimony.model.AppUserFee;

public interface AppUserFeeDao {

	AppUserFee findById(long id);
	
	AppUserFee findByUserId(String userId);
	
	void save(AppUserFee auf);
	
	void deleteById(long id);
	
	List<AppUserFee> findAll();
}
