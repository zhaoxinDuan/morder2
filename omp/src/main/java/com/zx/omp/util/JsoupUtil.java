package com.zx.omp.util;

import org.jsoup.Connection;
import org.jsoup.Jsoup;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by simba on 2016/12/20 0020.
 */
public class JsoupUtil {
    public static void main(String[] args) throws Exception{
        Map<String,String> heards = new HashMap<>();
        heards.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36");
//        heards.put("Content-Type","application/x-www-form-urlencoded; charset=UTF-8");
        Connection.Response res = Jsoup.connect("http://127.0.0.1:8080/user/login.front").headers(heards).ignoreContentType(true)
                .data("userName", "simba", "password", "12345678")
                .method(Connection.Method.POST)
                .execute();
//        Map<String,String> cookies = res.cookies();
//        System.out.println("cookies = " + cookies);

//        Document doc = res.parse();
//        System.out.println("doc.toString() = " + doc.toString());
////这儿的SESSIONID需要根据要登录的目标网站设置的session Cookie名字而定
//        String sessionId = res.cookie("JSESSIONID");
//        System.out.println("sessionId = " + sessionId);
//        Jsoup.connect("http://127.0.0.1:8080/index").header("User-Agent", "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0")
//                .cookie("JSESSIONID", sessionId)
//                .get();
//        Document objectDoc = Jsoup.connect("http://127.0.0.1:8080/play/record").header("User-Agent", "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0")
//                .cookie("JSESSIONID", sessionId)
//                .get();
//        System.out.println("objectDoc.title() = " + objectDoc.toString());
    }
}
