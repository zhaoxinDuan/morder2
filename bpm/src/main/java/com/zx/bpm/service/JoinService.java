package com.zx.bpm.service;

import com.zx.bpm.dao.CompRepository;
import com.zx.bpm.dao.PersonRepository;
import com.zx.bpm.model.Comp;
import com.zx.bpm.model.Person;
import org.activiti.engine.delegate.DelegateExecution;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Arrays;
import java.util.List;

/**
 * Created by jery on 2016/11/23.
 */
@Service
public class JoinService {
	@Resource
	PersonRepository personRepository;
	@Resource
	private CompRepository compRepository;
	
	//加入公司操作，可从DelegateExecution获取流程中的变量
	public void joinGroup(DelegateExecution execution) {
		Boolean bool = (Boolean) execution.getVariable("joinApproved");
		if (bool) {
			Long personId = (Long) execution.getVariable("personId");
			Long compId = (Long) execution.getVariable("compId");
			Comp comp = compRepository.findOne(compId);
			Person person = personRepository.findOne(personId);
			person.setComp(comp);
			personRepository.save(person);
			System.out.println("加入组织成功");
		} else {
			System.out.println("加入组织失败");
		}
	}
	
	//获取符合条件的审批人，演示这里写死，使用应用使用实际代码
	public List<String> findUsers(DelegateExecution execution) {
		return Arrays.asList("admin", "wtr");
	}
}
