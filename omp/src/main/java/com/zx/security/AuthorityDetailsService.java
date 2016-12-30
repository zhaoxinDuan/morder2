package com.zx.security;

import com.zx.omp.domain.Tuser;
import com.zx.omp.service.TuserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by amis on 2016/3/15.
 */
public class AuthorityDetailsService implements UserDetailsService {
    private static Logger logger = LoggerFactory.getLogger(AuthorityDetailsService.class);

    private TuserService tuserService;

    public AuthorityDetailsService(TuserService tuserService) {
        this.tuserService = tuserService;
    }

    public UserDetails loadUserByUsername(String username) throws AuthenticationException {
        // TODO Auto-generated method stub
        List<SimpleGrantedAuthority> authorities = new ArrayList<SimpleGrantedAuthority>();
        authorities.add(new SimpleGrantedAuthority("ROLE_USER"));
        Tuser tuser = this.tuserService.selectByUname(username);
//        authorities.add(new SimpleGrantedAuthority("ROLE_CLIENT"));
        if(null != tuser){
            return new User(tuser.getUname(), tuser.getUpwd(), true, true, true, true, authorities);
        }else{
            throw new UsernameNotFoundException(username);
        }

    }

}
