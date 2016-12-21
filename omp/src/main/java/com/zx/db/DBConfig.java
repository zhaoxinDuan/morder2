package com.zx.db;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

/**
 * Created by simba on 2016/12/1 0001.
 */
@Configuration
public class DBConfig {
    @Bean
    @ConfigurationProperties(prefix="spring.datasource")
    public DataSource dataSource() {
        return new EncryptedDriverManagerDataSource();
    }
}
