package com.zx.bpm.dao;


import com.zx.bpm.model.Person;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by jery on 2016/11/23.
 */
public interface PersonRepository extends JpaRepository<Person, Long> {
	
	Person findByPersonName(String personName);
	
}

