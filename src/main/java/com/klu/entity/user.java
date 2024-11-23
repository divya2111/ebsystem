package com.klu.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class user {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String name;
	private Long billno;
	private Long phnumber;
	private String password;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Long getBillno() {
		return billno;
	}
	public void setBillno(Long billno) {
		this.billno = billno;
	}
	public Long getPhnumber() {
		return phnumber;
	}
	public void setPhnumber(Long phnumber) {
		this.phnumber = phnumber;
	}
	public String getPassword() {
		return password;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", billno=" + billno + ", phnumber=" + phnumber + ", password="
				+ password + "]";
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String phbString() {
		return "User [name=" + name + ", billno=" + billno + ", phnumber=" + phnumber + "]";
	}
	
}
