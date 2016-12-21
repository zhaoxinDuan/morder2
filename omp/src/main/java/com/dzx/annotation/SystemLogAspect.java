/*
 * Copyright (c) 2016. ttp kevin.
 */

package com.dzx.annotation;

/**
 * Created by Administrator on 2016/8/4 0004.
 */

import com.dzx.common.HttpConnectionUtil;
import net.sf.json.JSONObject;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.lang.reflect.Method;

/**
 * 切点类
 */
@Aspect
@Component
public  class SystemLogAspect {
    //注入Service用于把日志保存数据库
    //本地异常日志记录对象
    private  static  final Logger logger = LoggerFactory.getLogger(SystemLogAspect. class);
    //Service层切点
    @Pointcut("@annotation(com.dzx.annotation.SystemServiceLog)")
    public  void serviceAspect() {
    }

    //Controller层切点
    @Pointcut("@annotation(com.dzx.annotation.SystemControllerLog)")
    public  void controllerAspect() {
    }

    /**
     * 前置通知 用于拦截Controller层记录用户的操作
     *
     * @param joinPoint 切点
     */
    @Before("controllerAspect()")
    public  void doBefore(JoinPoint joinPoint) {

        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        HttpSession session = request.getSession();
        //读取session中的用户
//        TAdminInfo tAdminInfo = (TAdminInfo) session.getAttribute("adminInfo");
        //请求的IP
        String ip = HttpConnectionUtil.getIp(request);
        try {
            //*========控制台输出=========*//
            logger.info("=====前置通知开始=====");
            logger.info("请求方法:" + (joinPoint.getTarget().getClass().getName() + "." + joinPoint.getSignature().getName() + "()"));
            logger.info("方法描述:" + getControllerMethodDescription(joinPoint));
            logger.info("参数:" + request.getQueryString());
//            logger.info("请求人:" + tAdminInfo.getTname());
//            logger.info("请求IP:" + ip);
//            //*========数据库日志=========*//
//            TAdminOptLog optlog = new TAdminOptLog();
//            optlog.setToptdesc(getControllerMethodDescription(joinPoint));
//            optlog.setTopmethod((joinPoint.getTarget().getClass().getName() + "." + joinPoint.getSignature().getName() + "()"));
//            optlog.setTopttype(1);
//            optlog.setToptip(ip);
//            optlog.setTopparam(request.getQueryString());
//            optlog.setTopttime(new Timestamp(System.currentTimeMillis()));
//            optlog.setTadminid(tAdminInfo.getTadminid());
//            //保存数据库
//            this.adminInfoOptLogService.insert(optlog);
//            logService.add(log);
            logger.info("=====前置通知结束=====");
        }  catch (Exception e) {
            //记录本地异常日志
            logger.error("==前置通知异常==");
            logger.error("异常信息:{}", e.getMessage());
        }
    }

    /**
     * 异常通知 用于拦截service层记录异常日志
     *
     * @param joinPoint
     * @param e
     */
    @AfterThrowing(pointcut = "serviceAspect()", throwing = "e")
    public  void doAfterThrowing(JoinPoint joinPoint, Throwable e) {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        HttpSession session = request.getSession();
//        //读取session中的用户
//        TAdminInfo tAdminInfo = (TAdminInfo) session.getAttribute("adminInfo");
//        //获取请求ip
        String ip = HttpConnectionUtil.getIp(request);
//        //获取用户请求方法的参数并序列化为JSON格式字符串
        String params = JSONObject.fromObject(joinPoint.getArgs()).toString();
////        if (joinPoint.getArgs() !=  null && joinPoint.getArgs().length > 0) {
////            for ( int i = 0; i < joinPoint.getArgs().length; i++) {
////                params += JSONUtil.toJsonString(joinPoint.getArgs()[i]) + ";";
////            }
////        }
        try {
//              /*========控制台输出=========*/
//            logger.info("=====异常通知开始=====");
//            logger.info("异常代码:" + e.getClass().getName());
//            logger.info("异常信息:" + e.getMessage());
//            logger.info("异常方法:" + (joinPoint.getTarget().getClass().getName() + "." + joinPoint.getSignature().getName() + "()"));
//            logger.info("方法描述:" + getServiceMthodDescription(joinPoint));
//            logger.info("请求人:" + tAdminInfo.getTname());
//            logger.info("请求IP:" + ip);
//            logger.info("请求参数:" + params);
//               /*==========数据库日志=========*/
//            TAdminOptLog optlog = new TAdminOptLog();
//            optlog.setToptdesc(getControllerMethodDescription(joinPoint));
//            optlog.setTopmethod((joinPoint.getTarget().getClass().getName() + "." + joinPoint.getSignature().getName() + "()"));
//            optlog.setTopttype(1);
//            optlog.setToptip(ip);
//            optlog.setTopparam(null);
//            optlog.setTopttime(new Timestamp(System.currentTimeMillis()));
//            optlog.setTopparam(params);
//            optlog.setTadminid(tAdminInfo.getTadminid());
//            //保存数据库
//            this.adminInfoOptLogService.insert(optlog);
            logger.info("=====异常通知结束=====");
        }  catch (Exception ex) {
            //记录本地异常日志
            logger.error("==异常通知异常==");
            logger.error("异常信息:{}", ex.getMessage());
        }
         /*==========记录本地异常日志==========*/
        logger.error("异常方法:{}异常代码:{}异常信息:{}参数:{}", joinPoint.getTarget().getClass().getName() + joinPoint.getSignature().getName(), e.getClass().getName(), e.getMessage(), params);

    }


    /**
     * 获取注解中对方法的描述信息 用于service层注解
     *
     * @param joinPoint 切点
     * @return 方法描述
     * @throws Exception
     */
    public  static String getServiceMthodDescription(JoinPoint joinPoint)
            throws Exception {
        String targetName = joinPoint.getTarget().getClass().getName();
        String methodName = joinPoint.getSignature().getName();
        Object[] arguments = joinPoint.getArgs();
        Class targetClass = Class.forName(targetName);
        Method[] methods = targetClass.getMethods();
        String description = "";
        for (Method method : methods) {
            if (method.getName().equals(methodName)) {
                Class[] clazzs = method.getParameterTypes();
                if (clazzs.length == arguments.length) {
                    description = method.getAnnotation(SystemServiceLog. class).description();
                    break;
                }
            }
        }
        return description;
    }

    /**
     * 获取注解中对方法的描述信息 用于Controller层注解
     *
     * @param joinPoint 切点
     * @return 方法描述
     * @throws Exception
     */
    public  static String getControllerMethodDescription(JoinPoint joinPoint)  throws Exception {
        String targetName = joinPoint.getTarget().getClass().getName();
        String methodName = joinPoint.getSignature().getName();
        Object[] arguments = joinPoint.getArgs();
        Class targetClass = Class.forName(targetName);
        Method[] methods = targetClass.getMethods();
        String description = "";
        for (Method method : methods) {
            if (method.getName().equals(methodName)) {
                Class[] clazzs = method.getParameterTypes();
                if (clazzs.length == arguments.length) {
                    description = method.getAnnotation(SystemControllerLog. class).description();
                    break;
                }
            }
        }
        return description;
    }
}