package com.dzx.common;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.digest.DigestUtils;

import java.io.UnsupportedEncodingException;
import java.util.Scanner;

/**
 * Created by Administrator on 2016/8/3 0003.
 */
public class EncryptionUtil {
    /**
     * Base64 encode
     * */
    public static String base64Encode(String data){
        return Base64.encodeBase64String(data.getBytes());
    }

    /**
     * Base64 decode
     * @throws UnsupportedEncodingException
     * */
    public static String base64Decode(String data) throws UnsupportedEncodingException {
        return new String(Base64.decodeBase64(data.getBytes()),"utf-8");
    }

    /**
     * md5
     * */
    public static String md5Hex(String data){
        return DigestUtils.md5Hex(data);
    }

    /**
     * sha1
     * */
    public static String sha1Hex(String data){
//        return DigestUtils.sha1Hex(data);
        try {
            return new String(DigestUtils.sha(data),"utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * sha256
     * */
    public static String sha256Hex(String data){
        return DigestUtils.sha256Hex(data);
    }

    public static void main(String[] args){
//        System.out.println("base64Encode(\"12345阿萨德\") = " + base64Encode("jdbc:mysql://192.168.1.221:3306/ttp?useUnicode=true&characterEncoding=utf-8"));
//        System.out.println("base64Encode(\"12345阿萨德\") = " + base64Encode("jdbc:mysql://192.168.1.221:3306/oauth?useUnicode=true&characterEncoding=utf-8"));
//        System.out.println("base64Encode(\"12345阿萨德\") = " + base64Encode("root"));
//        System.out.println("base64Encode(\"12345阿萨德\") = " + base64Encode("123456"));
        String prompt = null;

        boolean flag = true;
        while(flag) {
            prompt = readString6("请输入需要加密的字符串：");
            if("bye".equals(prompt)||"exit".equals(prompt)){
                flag = false;
            }else {
                System.out.println("加密后字符串为：" + base64Encode(prompt));
            }
        }

    }

    private static String readString6(String prompt) {
        Scanner scanner = new Scanner(System.in);
        System.out.print(prompt);
        return scanner.nextLine();
    }
}
