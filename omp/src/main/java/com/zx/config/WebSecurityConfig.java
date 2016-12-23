package com.zx.config;

/**
 * Created by simba on 2016/12/22 0022.
 */

import com.zx.security.AuthorityDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@EnableWebSecurity
@Configuration
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                .antMatchers("/css/**", "/js/**", "/data/**", "/img/**", "/webjars/**", "/index").permitAll()
                .antMatchers("/user/**").hasRole("USER")
//                .antMatchers("/rest/oauth/**").authenticated()
//                .antMatchers("/user/**").authenticated()
                .and()
                .formLogin()
                .loginPage("/userlogin").failureUrl("/login?msg=error").defaultSuccessUrl("/userlogin")
                .and()
                .logout().invalidateHttpSession(true)
                .logoutSuccessUrl("/login")
                .and()
                .csrf()
//                .requireCsrfProtectionMatcher(new AntPathRequestMatcher("/oauth/authorize"))
                .disable();
    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(new AuthorityDetailsService());
    }


}