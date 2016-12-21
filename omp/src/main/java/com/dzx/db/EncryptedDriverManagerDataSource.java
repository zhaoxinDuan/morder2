package com.dzx.db;

import com.dzx.common.EncryptionUtil;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import java.io.UnsupportedEncodingException;

/**
 * Created by simba on 2016/12/1 0001.
 */
public class EncryptedDriverManagerDataSource extends DriverManagerDataSource {

    private boolean isencrypt;

    public boolean isencrypt() {
        return isencrypt;
    }

    public void setIsencrypt(boolean isencrypt) {
        this.isencrypt = isencrypt;
    }

    @Override
    public String getUrl() {
        String url = super.getUrl();
        if(this.isencrypt) {
            try {
                url = EncryptionUtil.base64Decode(url);
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        return url;
    }

    @Override
    public String getUsername() {
        String username = super.getUsername();
        if(this.isencrypt) {
            try {
                username = EncryptionUtil.base64Decode(username);
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        return username;
    }

    @Override
    public String getPassword() {
        String password = super.getPassword();
        if(this.isencrypt) {
            try {
                password = EncryptionUtil.base64Decode(password);
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        return password;
    }

}
