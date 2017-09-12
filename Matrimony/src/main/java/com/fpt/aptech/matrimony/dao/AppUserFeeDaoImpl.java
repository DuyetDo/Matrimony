package com.fpt.aptech.matrimony.dao;

import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import com.fpt.aptech.matrimony.model.AppUserFee;

@Repository("appUserFeeDao")
public class AppUserFeeDaoImpl extends AbstractDao<Long, AppUserFee> implements AppUserFeeDao {

	static final Logger logger = LoggerFactory.getLogger(AppUserFeeDaoImpl.class);

	public void deleteById(long id) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("id", id));
		AppUserFee auf = (AppUserFee) crit.uniqueResult();
		if (null != auf) {
			delete(auf);
		}
	}

	@Override
	public AppUserFee findById(long id) {
		AppUserFee auf = getByKey(id);
		return auf;
	}

	@Override
	public AppUserFee findByUserId(String ssoId) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("ssoId", ssoId));
		AppUserFee auf = (AppUserFee) crit.uniqueResult();
		return auf;
	}

	@Override
	public void save(AppUserFee auf) {
		persist(auf);	
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AppUserFee> findAll() {
		Criteria criteria = createEntityCriteria();
		List<AppUserFee> aufs = (List<AppUserFee>) criteria.list();
		return aufs;
	}

}
