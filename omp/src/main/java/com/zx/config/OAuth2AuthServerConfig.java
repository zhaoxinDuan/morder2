package com.zx.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.ClientDetailsService;
import org.springframework.security.oauth2.provider.approval.UserApprovalHandler;
import org.springframework.security.oauth2.provider.client.JdbcClientDetailsService;
import org.springframework.security.oauth2.provider.token.DefaultTokenServices;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.JdbcTokenStore;

import javax.annotation.Resource;
import javax.sql.DataSource;
import java.util.concurrent.TimeUnit;

/**
 * Created by simba on 2016/12/23 0023.
 */
@EnableAuthorizationServer
@Configuration
public class OAuth2AuthServerConfig extends AuthorizationServerConfigurerAdapter {
    @Resource
    private AuthenticationManager authenticationManager;
//    @Resource
//    private UserApprovalHandler userApprovalHandler;

    @Resource
    private DataSource dataSource;
//    @Resource
//    private PasswordEncoder passwordEncoder;

    @Override
    public void configure(
            AuthorizationServerSecurityConfigurer oauthServer)
            throws Exception {
        oauthServer
                .tokenKeyAccess("permitAll()")
//                .realm("/rest/oauth")
                .checkTokenAccess("isAuthenticated()")
                .allowFormAuthenticationForClients()
//                .passwordEncoder(passwordEncoder)
        ;
    }


    @Override
    public void configure(ClientDetailsServiceConfigurer clients)
            throws Exception {
//        clients.jdbc(dataSource)
        clients.inMemory()
//                .withClient("sampleClientId")
//                .authorizedGrantTypes("implicit")
//                .scopes("read")
//                .autoApprove(true)
//                .and()
                .withClient("rest-client")
                .secret("rest")
                .authorizedGrantTypes(
                        "password","authorization_code", "refresh_token", "implicitm")
                .scopes("read,write,trust");
    }


    @Override // 配置框架应用上述实现
    public void configure(AuthorizationServerEndpointsConfigurer endpoints) throws Exception {
        endpoints.authenticationManager(authenticationManager);
//        endpoints.userApprovalHandler(userApprovalHandler);
        endpoints.tokenStore(tokenStore());

        // 配置TokenServices参数
        DefaultTokenServices tokenServices = new DefaultTokenServices();
        tokenServices.setTokenStore(endpoints.getTokenStore());
        tokenServices.setSupportRefreshToken(false);
        tokenServices.setClientDetailsService(endpoints.getClientDetailsService());
        tokenServices.setTokenEnhancer(endpoints.getTokenEnhancer());
        tokenServices.setAccessTokenValiditySeconds((int) TimeUnit.DAYS.toSeconds(30)); // 30天
        endpoints.tokenServices(tokenServices);
    }

    @Bean // 声明TokenStore实现
    public TokenStore tokenStore() {
        return new JdbcTokenStore(dataSource);
    }
}
