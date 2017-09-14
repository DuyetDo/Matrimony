package com.fpt.aptech.matrimony.dao;

import java.util.List;

import com.fpt.aptech.matrimony.model.FriendsRequest;

public interface FriendsRequestDao {
	
	void save(FriendsRequest fr);
	
	void deleteById(int id);
	
	List<FriendsRequest> findListFriend(String userName);

}

