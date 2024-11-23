package com.klu.repository;

import java.util.List; 

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.klu.entity.employee;
import com.klu.entity.user;

@Repository
public interface EmployeeRepository extends JpaRepository<employee,Long>{
	
	@Query("select name from employee e where e.name =:en and e.password =:ep")
	public String Login(@Param("en") String name,@Param("ep") String password);
	
	@Query("select u from user u where u.billno =:bno")
	public List<user> readbnp(@Param("bno") Long bno);

}
