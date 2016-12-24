package com.zx;

import com.zx.bpm.dao.CompRepository;
import com.zx.bpm.dao.PersonRepository;
import com.zx.bpm.model.Comp;
import com.zx.bpm.model.Person;
import com.zx.bpm.service.ActivitiService;
import org.activiti.spring.boot.SecurityAutoConfiguration;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import javax.annotation.Resource;

/**
 * Created by jery on 2016/11/23.
 */

@SpringBootApplication
public class ActivitiApplication {
	@Resource
	private CompRepository compRepository;
	@Resource
	private PersonRepository personRepository;
	
	
	public static void main(String[] args) {
		SpringApplication.run(ActivitiApplication.class, args);
	}
	
	//初始化模拟数据
	@Bean
	public CommandLineRunner init(final ActivitiService myService) {
		return new CommandLineRunner() {
			public void run(String... strings) throws Exception {
				if (personRepository.findAll().size() == 0) {
					personRepository.save(new Person("wtr"));
					personRepository.save(new Person("wyf"));
					personRepository.save(new Person("admin"));
				}
				if (compRepository.findAll().size() == 0) {
					Comp group = new Comp("great company");
					compRepository.save(group);
					Person admin = personRepository.findByPersonName("admin");
					Person wtr = personRepository.findByPersonName("wtr");
					admin.setComp(group); wtr.setComp(group);
					personRepository.save(admin); personRepository.save(wtr);
				}
			}
		};
	}
}