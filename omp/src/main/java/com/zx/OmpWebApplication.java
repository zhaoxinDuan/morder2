package com.zx;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@EnableTransactionManagement
public class OmpWebApplication {

	public static void main(String[] args) {
		SpringApplication.run(OmpWebApplication.class, args);
	}


}
