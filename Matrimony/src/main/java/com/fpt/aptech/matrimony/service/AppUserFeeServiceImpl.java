package com.fpt.aptech.matrimony.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.fpt.aptech.matrimony.dao.AppUserFeeDao;
import com.fpt.aptech.matrimony.model.AppUserFee;

@Service("appUserFeeService")
@Transactional
public class AppUserFeeServiceImpl implements AppUserFeeService{

	@Autowired
	private AppUserFeeDao dao;

	@Override
	public AppUserFee findById(long id) {
		return dao.findById(id);
	}

	@Override
	public AppUserFee findByUserId(String ssoId) {
		return dao.findByUserId(ssoId);
	}

	@Override
	public void save(AppUserFee auf) {
		dao.save(auf);
	}

	@Override
	public void deleteById(long id) {
		dao.deleteById(id);
	}

	@Override
	public List<AppUserFee> findAll() {
		return dao.findAll();
	}
	
}
