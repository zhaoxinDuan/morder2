package com.dzx.config;

import org.springframework.beans.factory.annotation.Value;

/**
 * Created by simba on 2016/12/20 0020.
 */
//@Configuration
public class MyConfiguration {
    @Value("${my.google.auth.webname}")
    private String googleAuthWebname;

    public String getGoogleAuthWebname() {
        return googleAuthWebname;
    }

    public void setGoogleAuthWebname(String googleAuthWebname) {
        this.googleAuthWebname = googleAuthWebname;
    }
}
