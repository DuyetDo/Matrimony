package com.fpt.aptech.matrimony.service;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fpt.aptech.matrimony.dao.FriendsRequestDao;
import com.fpt.aptech.matrimony.model.FriendsRequest;

@Service("friendsRequestService")
@Transactional
public class FriendsRequestServiceImpl implements FriendsRequestService {
	
	@Autowired
	private FriendsRequestDao dao;

	@Override
	public void save(FriendsRequest fr) {
		Calendar now = Calendar.getInstance();
		fr.setCreateDatetime(now.getTime());
		fr.setStatus(1);
		dao.save(fr);
	}

	@Override
	public void deleteById(int id) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<FriendsRequest> findListFriend(String userName) {
		return dao.findListFriend(userName);
	}

}
