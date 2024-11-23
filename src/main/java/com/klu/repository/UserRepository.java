package com.klu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klu.entity.user;

@Repository
public interface UserRepository extends JpaRepository<user,Long> {

	@Query("select billno from user u where u.billno =:eid")
	public String bills(@Param("eid") Long eid);
	
	@Query("select billno from user u where u.billno =:eid and u.password =:paswd")
	public String login(@Param("eid") long eid,@Param("paswd") String paswd);
	
	@Query("select name from user u where u.billno =:eid")
	public String GetBillno(@Param("eid") Long eid);
	
	@Query("select id from user u where u.billno =:eid")
	public long changepassword(@Param("eid") Long eid);
}
