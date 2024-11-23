package com.klu.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.klu.entity.bills;
import com.klu.entity.user;
import com.klu.repository.BillRepository;
import com.klu.repository.EmployeeRepository;
import com.klu.repository.UserRepository;

@Service
public class employeemanager  {
	
	@Autowired
	EmployeeRepository er;
	
	@Autowired
	UserRepository ur;
	
	@Autowired
	BillRepository br;
	
	public String Login(String name,String password) {
		String p = er.Login(name, password);
		if(p!=null)
			return p;
		else
			return "wrong password";
	}
	public String bills(Long billno) {
		return ur.bills(billno);
	}
	public String saveuser(user u) {
		ur.save(u);
		return "successfull generated!";
	}
	
	public List<String> readbnp(Long bno){
		List<String> list = new ArrayList<String>();
		for(user u:er.readbnp(bno))
			list.add(toJsonString(u));
		return list;
	}
	 
	
	
	public String billit(bills b) {
		try {
		br.save(b);
		return null;
		}
		catch(Exception e) {
		return e.getMessage();
		}
	}
	
	public List<String> paymentn(Long sn) {
		List<String> list = new ArrayList<String>();
		for(bills u:br.readpayment(sn))
			list.add(toJsonString(u));
		return list;
	}
	public List<String> uidd(long id) {
		List<String> list = new ArrayList<String>();
		for(bills u:br.uid(id))
			list.add(toJsonString(u));
		return list;
	}
	
	public String updatebill(int fc,double ba,long id,int cc,double tu,double a,double ed,double gc,double i,double oc,double sc, boolean s) {
		bills b = br.findById(id).get();
		try {
		b.setFixedcharges(fc);
		b.setBILL_AMT(ba);
		b.setCustomercharges(cc);
		b.setTrue_up(tu);
		b.setAdjustment(a);
		b.setElectricityduty(ed);
		b.setGridcharges(gc);
		b.setInterestoned(i);
		b.setOthercharges(oc);
		b.setStatus(s);
		b.setSurcharge(sc);
		br.save(b);
		return "succesfull";
		}
		catch(Exception e)
		{
			return e.getMessage();
		}
	} 
	
	public String toJsonString(Object obj)
	{
		GsonBuilder gbuilder = new GsonBuilder();
		Gson gson = gbuilder.create();
		return gson.toJson(obj);
	}
	
}
