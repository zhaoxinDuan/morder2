package com.zx.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
 * Created by simba on 2016/12/23 0023.
 */
@Configuration
@Order(10)
public class OAuth2UiResourceConfiguration extends WebSecurityConfigurerAdapter {
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .requestMatchers().antMatchers("/rest/oauth/**")
                .and()
                .authorizeRequests()
                .antMatchers("/rest/oauth/**").access("hasRole('CLIENT')");
    }
}