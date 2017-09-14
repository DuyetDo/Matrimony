package com.fpt.aptech.matrimony.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.fpt.aptech.matrimony.model.FriendsRequest;

@Repository("friendsRequestDao")
public class FriendsRequestDaoImpl extends AbstractDao<Long, FriendsRequest> implements FriendsRequestDao {

	@Override
	public void save(FriendsRequest fr) {
		persist(fr);
	}

	@Override
	public void deleteById(int id) {
		// TODO Auto-generated method stub

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<FriendsRequest> findListFriend(String userName) {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("idUserReceive"));
		criteria.add(Restrictions.eq("idUserRequest", userName));
		criteria.add(Restrictions.eq("status", 1));
		List<FriendsRequest> friendList = (List<FriendsRequest>) criteria.list();
		return friendList;
	}

}
