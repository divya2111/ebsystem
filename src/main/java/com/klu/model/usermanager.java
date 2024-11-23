package com.klu.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.entity.user;
import com.klu.repository.UserRepository;

@Service 
public class usermanager {
@Autowired
UserRepository ur;


public String login(long billno, String password){
	return ur.login(billno, password);
}

public String bills(Long billno) {
	return ur.GetBillno(billno);		
}

public long change(long eid) {
	return ur.changepassword(eid);
}

public String updatepassword(long id, String password) {
	user u=ur.findById(id).get();
	u.setPassword(password);
	ur.save(u);
	return "successfull";
	
	
}

}
