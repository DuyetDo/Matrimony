package com.fpt.aptech.matrimony.service;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fpt.aptech.matrimony.dao.AppUserFeeDao;
import com.fpt.aptech.matrimony.dao.UserDao;
import com.fpt.aptech.matrimony.model.AppUserFee;
import com.fpt.aptech.matrimony.model.User;


@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao dao;
	
	@Autowired
	private AppUserFeeDao aufDao;

	@Autowired
    private PasswordEncoder passwordEncoder;
	
	public User findById(int id) {
		return dao.findById(id);
	}

	public User findBySSO(String sso) {
		User user = dao.findBySSO(sso);
		return user;
	}

	@Transactional
	public void saveUser(User user) {
		Calendar now = Calendar.getInstance();
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		user.setCreateDatetime(now.getTime());
	
		user.setActive(true);
		dao.save(user);
		
		AppUserFee auf = new AppUserFee();
		
		auf.setSsoId(user.getSsoId());
		auf.setCreateDatetime(now.getTime());
		if(user.getType() == 1){
			auf.setFeeId(1);
			auf.setValue(50D);
		}else if(user.getType() == 2){
			auf.setFeeId(2);
			auf.setValue(500D);
		}
		
		aufDao.save(auf);
	}

	public void updateUser(User user) {
		User entity = dao.findById(user.getId());
		if(entity!=null){
			entity.setSsoId(user.getSsoId());
			if(!user.getPassword().equals(entity.getPassword())){
				entity.setPassword(passwordEncoder.encode(user.getPassword()));
			}
			entity.setFirstName(user.getFirstName());
			entity.setLastName(user.getLastName());
			entity.setEmail(user.getEmail());
			entity.setUserProfiles(user.getUserProfiles());
		}
	}

	
	public void deleteUserById(int id) {
		dao.deleteById(id);
	}

	public List<User> findAllUsers() {
		return dao.findAllUsers();
	}

//	public boolean isUserSSOUnique(Integer id, String sso) {
//		User user = findBySSO(sso);
//		return ( user == null || ((id != null) && (user.getId() == id)));
//	}
	
	public boolean isUserSSOUnique(String sso) {
		User user = findBySSO(sso);
		return ( user == null);
	}

	@Override
	public List<User> findFriends(String keyword) {
		return dao.findFriends(keyword);
	}
	
}
