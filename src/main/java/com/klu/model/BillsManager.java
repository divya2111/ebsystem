package com.klu.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.klu.entity.bills;
import com.klu.repository.BillRepository;

@Service
public class BillsManager {
	
	@Autowired
	BillRepository br;
	
	public List<String> getbills(Long id){
		List<String> list = new ArrayList<String>();
		for(bills u: br.getbills(id))
			list.add(toJsonString(u));
		return list;
		
	}
	
	public void deletebyid(long id) {
		bills b = br.findById(id).get();
		br.delete(b);
	}
	
	public List<String> getbillbyid(Long id){
		List<String> list = new ArrayList<String>();
		for(bills u: br.getbillbyid(id))
			list.add(toJsonString(u));
		return list;
		
	}
	
	public String toJsonString(Object obj)
	{
		GsonBuilder gbuilder = new GsonBuilder();
		Gson gson = gbuilder.create();
		return gson.toJson(obj);
	}

}
