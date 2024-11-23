package com.klu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klu.entity.bills;

@Repository
public interface BillRepository extends JpaRepository<bills, Long>{

	
	 @Query("select u from bills u where u.servicenumber =:sv")
	  public List<bills> readpayment(@Param("sv") Long servicenumber);
	  
	  @Query("select b from bills b where b.id =:id")
	  public List<bills> uid(@Param("id") long id);
	  
	  @Query("select b from bills b where b.servicenumber=:id")
	  public List<bills> getbills(@Param("id") Long id);
	  
	  @Query("select b from bills b where b.id=:id")
	  public List<bills> getbillbyid(@Param("id") Long id);
}
