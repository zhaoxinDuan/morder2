package com.zx.handler;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/** 异常处理类
 * Created by Administrator on 2016/12/8 0008.
 */
@ControllerAdvice
public class AllExceptionHandler {
    public static final String DEFAULT_ERROR_VIEW = "error";

    @ExceptionHandler(value = Exception.class)
    public ModelAndView defaultErrorHandler(HttpServletRequest req, Exception e)throws Exception{
        e.printStackTrace();
        ModelAndView mav = new ModelAndView();
        mav.addObject("exception", ExceptionUtils.getFullStackTrace(e));
        mav.addObject("url", req.getRequestURL());
        mav.setViewName(DEFAULT_ERROR_VIEW);
        e.printStackTrace();
        return mav;
    }
}
