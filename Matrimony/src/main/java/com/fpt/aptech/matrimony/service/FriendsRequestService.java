package com.fpt.aptech.matrimony.service;

import java.util.List;

import com.fpt.aptech.matrimony.model.FriendsRequest;

public interface FriendsRequestService {

	void save(FriendsRequest fr);
	
	void deleteById(int id);
	
	List<FriendsRequest> findListFriend(String userName);
}
