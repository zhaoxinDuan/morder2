package com.zx.bpm.dao;


import com.zx.bpm.model.Comp;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CompRepository extends JpaRepository<Comp, Long> {
	
}
