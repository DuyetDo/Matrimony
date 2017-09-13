package com.fpt.aptech.matrimony.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.fpt.aptech.matrimony.model.User;

@Repository("userDao")
public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao {

	static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);

	public User findById(int id) {
		User user = getByKey(id);
		if (user != null) {
			Hibernate.initialize(user.getUserProfiles());
		}
		return user;
	}

	public User findBySSO(String sso) {
		logger.info("SSO : {}", sso);
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("ssoId", sso));
		User user = (User) crit.uniqueResult();
		if (user != null) {
			Hibernate.initialize(user.getUserProfiles());
		}
		return user;
	}

	@SuppressWarnings("unchecked")
	public List<User> findAllUsers() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("firstName"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);// To avoid
																		// duplicates.
		List<User> users = (List<User>) criteria.list();

		return users;
	}

	public void save(User user) {
		persist(user);
	}

	public void deleteById(int id) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("id", id));
		User user = (User) crit.uniqueResult();
		if (null != user) {
			delete(user);
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> findFriends(String keyword) {
		if (keyword == null) {
			return null;
		}
		
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("ssoId"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);// To avoid
																		// duplicates.
		criteria.add(Restrictions.like("ssoId","%" + keyword + "%"));
//		criteria.add(Restrictions.or(Restrictions.eq("email",keyword)));
//		criteria.add(Restrictions.eq("lastName", "%" + keyword + "%"));
//		criteria.add(Restrictions.eq("gender", "%" + keyword + "%"));
//		criteria.add(Restrictions.eq("martialStatus", "%" + keyword + "%"));
//		criteria.add(Restrictions.eq("address", "%" + keyword + "%"));
//		criteria.add(Restrictions.eq("countryLivingIn", "%" + keyword + "%"));
//		criteria.add(Restrictions.eq("contactNumber", "%" + keyword + "%"));
//		criteria.add(Restrictions.eq("motherTongue", "%" + keyword + "%"));
//		criteria.add(Restrictions.eq("religion", "%" + keyword + "%"));
//		criteria.add(Restrictions.eq("caste", "%" + keyword + "%"));
//		criteria.add(Restrictions.eq("description", "%" + keyword + "%"));
		criteria.add(Restrictions.eq("isActive", true));

		List<User> users = (List<User>) criteria.list();

		return users;
	}

}
