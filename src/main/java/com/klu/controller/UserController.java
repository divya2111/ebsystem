package com.klu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.klu.model.BillsManager;
import com.klu.model.usermanager;

@RestController
@RequestMapping("/user")
public class UserController {

	@Autowired 
	usermanager um;
	
	@Autowired
	BillsManager br;
	
	public static long billno;
	public static long iid;
	
	
	@GetMapping("/login/{billno}/{password}")
	public String login(@PathVariable("billno") long bilno, @PathVariable("password") String password) {
		String p=um.login(bilno, password);
		if(p==null) {
			return "wrong password";
		}
		else {
			billno = Long.parseLong(p);
			return "successfully";
		}
	}
	
	@GetMapping("/getname")
	public String getname() {
		return um.bills(billno);
	}
	
	@GetMapping("/getbills")
	public String readuserid() {
		return br.getbills(billno).toString();
	}
	
	@GetMapping("/readbills/{id}")
	public String getiid(@PathVariable("id") long id) {
		iid = id;
		return "succesful";
	}
	
	@GetMapping("/getbyid")
	public String Getbyid() {
		return br.getbillbyid(iid).toString();
	}
	
	@DeleteMapping("/delete")
	public void deletebill() {
		br.deletebyid(iid);
	}
	
	@GetMapping("/getchange/{eid}")
	public String getid(@PathVariable("eid") long eid) {
		iid = um.change(eid);
		return "" + iid;
	}
	
	@PutMapping("/changepass/{pass}")
	public String changepasword(@PathVariable("pass") String pass) {
		return um.updatepassword(iid, pass);
	}
}
