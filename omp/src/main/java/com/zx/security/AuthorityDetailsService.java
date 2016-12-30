package com.zx.security;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by amis on 2016/3/15.
 */
public class AuthorityDetailsService implements UserDetailsService {
    private static Logger logger = LoggerFactory.getLogger(AuthorityDetailsService.class);
    private Md5PasswordEncoder encoder = new Md5PasswordEncoder();


    public UserDetails loadUserByUsername(String username) throws AuthenticationException {
        // TODO Auto-generated method stub
        logger.info("OAuth2RestfulDetailsService loadUserByUsername:"+username);
        List<SimpleGrantedAuthority> authorities = new ArrayList<SimpleGrantedAuthority>();
        authorities.add(new SimpleGrantedAuthority("ROLE_USER"));
//        authorities.add(new SimpleGrantedAuthority("ROLE_CLIENT"));

        return new User("user", "password", true, true, true, true, authorities);

    }

}
