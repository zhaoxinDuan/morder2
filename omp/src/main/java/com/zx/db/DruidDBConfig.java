package com.zx.db;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.support.http.StatViewServlet;
import com.alibaba.druid.support.http.WebStatFilter;
import com.zx.common.EncryptionUtil;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.embedded.FilterRegistrationBean;
import org.springframework.boot.context.embedded.ServletRegistrationBean;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;
import java.io.UnsupportedEncodingException;

/**
 * Created by simba on 2016/12/1 0001.
 */
@Configuration
public class DruidDBConfig {
    //    @Bean
//    @ConfigurationProperties(prefix="spring.datasource")
//    public DataSource dataSource() {
//        return new EncryptedDriverManagerDataSource();
//    }
    @Bean
    public ServletRegistrationBean druidServlet() {
        ServletRegistrationBean registrationBean =new ServletRegistrationBean(new StatViewServlet(), "/druid/*");
//        registrationBean.addInitParameter("allow","192.168.16.110,127.0.0.1");// IP白名单 (没有配置或者为空，则允许所有访问)
//        registrationBean.addInitParameter("deny","192.168.16.111");// IP黑名单 (存在共同时，deny优先于allow)
        registrationBean.addInitParameter("loginUsername","admin");// 用户名
        registrationBean.addInitParameter("loginPassword","admini@123");// 密码
        registrationBean.addInitParameter("resetEnable","false");// 禁用HTML页面上的“Reset All”功能
        return registrationBean;
    }

    @Bean
    public FilterRegistrationBean filterRegistrationBean() {
        FilterRegistrationBean filterRegistrationBean = new FilterRegistrationBean();
        filterRegistrationBean.setFilter(new WebStatFilter());
        filterRegistrationBean.addUrlPatterns("/*");
        filterRegistrationBean.addInitParameter("exclusions", "/css/*,/js/*,/img/*,/fonts/*,/druid/*");
        return filterRegistrationBean;
    }

    @Bean
    @ConfigurationProperties(prefix = "spring.datasource")
    public DataSource druidDataSource(@Value("${spring.datasource.isencrypt}") Boolean isencrypt,
                                      @Value("${spring.datasource.url}") String url,
                                      @Value("${spring.datasource.username}") String username,
                                      @Value("${spring.datasource.password}") String password) {
        if (isencrypt) {
            try {
                url = EncryptionUtil.base64Decode(url);
                username = EncryptionUtil.base64Decode(username);
                password = EncryptionUtil.base64Decode(password);
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        DruidDataSource druidDataSource = new DruidDataSource();
        druidDataSource.setUrl(url);
        druidDataSource.setUsername(username);
        druidDataSource.setPassword(password);
        return new DruidDataSource();
    }
}
