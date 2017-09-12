package com.fpt.aptech.matrimony.service;

import java.util.List;

import com.fpt.aptech.matrimony.model.AppUserFee;

public interface AppUserFeeService {
    
	AppUserFee findById(long id);
	
	AppUserFee findByUserId(String ssoId);
	
	void save(AppUserFee auf);
	
	void deleteById(long id);
	
	List<AppUserFee> findAll();
}
