package com.dzx.common;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/**
 * Created by amis on 16-5-15.
 */
public class JSONResultUtils {
    public static final String MSG_SUCCESS="{\"success\":true}";
    public static final String MSG_ERROR="{\"success\":false}";
//    public static final String MSG_noTime="{\"not_enough\":true}";

    public static String readStream(InputStream inputStream){
        if (null == inputStream)
            return null;
        StringBuilder builder = new StringBuilder();
        BufferedInputStream bufStream = null;
        try {
            bufStream = new BufferedInputStream(inputStream);
            byte[] buf = new byte[1024];
            int count = 0;
            String bufS = null;
            while((count = bufStream.read(buf,0,1024))!=-1){
                bufS = new String(buf);
                builder.append(bufS);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            try {
                bufStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return builder.toString();
    }

}
