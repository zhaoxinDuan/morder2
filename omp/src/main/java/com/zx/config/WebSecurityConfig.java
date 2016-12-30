package com.zx.config;

/**
 * Created by simba on 2016/12/22 0022.
 */

import com.zx.security.AuthorityDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import javax.annotation.Resource;
import javax.sql.DataSource;

@EnableWebSecurity
@Configuration
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    @Resource
    private DataSource dataSource;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                .antMatchers("/css/**", "/js/**", "/data/**", "/img/**", "/webjars/**", "/login").permitAll()
                .antMatchers("/**").hasRole("USER")
//                .antMatchers("/rest/oauth/**").authenticated()
//                .antMatchers("/user/**").authenticated()
                .and()
                .formLogin()
                .successHandler(savedRequestAwareAuthenticationSuccessHandler())
                .loginPage("/login").failureUrl("/login?msg=error")
                .defaultSuccessUrl("/index")
//                .loginProcessingUrl("/auth/login_check")
//                .usernameParameter("username")
//                .passwordParameter("password")
                .and()
                .logout().invalidateHttpSession(true)
                .logoutSuccessUrl("/login")
                .and()
                .csrf()
                .and()
                .rememberMe()
                .key("rem-me-key")
                .rememberMeParameter("rememberme")
                .rememberMeParameter("my-remember-me")
                .tokenRepository(persistentTokenRepository())
                .tokenValiditySeconds(1209600);
//                .requireCsrfProtectionMatcher(new AntPathRequestMatcher("/oauth/authorize"))

    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(new AuthorityDetailsService());
    }

    @Bean
    public PersistentTokenRepository persistentTokenRepository() {
        JdbcTokenRepositoryImpl db = new JdbcTokenRepositoryImpl();
        db.setDataSource(dataSource);
        return db;
    }

    @Bean
    public SavedRequestAwareAuthenticationSuccessHandler
    savedRequestAwareAuthenticationSuccessHandler() {

        SavedRequestAwareAuthenticationSuccessHandler auth
                = new SavedRequestAwareAuthenticationSuccessHandler();
        auth.setTargetUrlParameter("targetUrl");
        return auth;
    }


}