package vn.devpro.btck_web.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import vn.devpro.btck_web.model.User;

@Service
public class UserService extends BaseService<User> {

	@Override
	public Class<User> clazz() {
		// TODO Auto-generated method stub
		return User.class;
	}
	
	public List<User> findAllActive(){
		return super.executeNativeSql("SELECT * FROM tbl_user WHERE status=1");
	}
	
	@Transactional
	public void deleteUserById (int id) {
		super.deleteById(id);
	}
}
