/*
 * Copyright (c) 2016. ttp kevin.
 */

package com.zx.annotation;

/**
 * Created by Administrator on 2016/8/4 0004.
 */

import java.lang.annotation.*;

/**
 *自定义注解 拦截service
 */

@Target({ElementType.PARAMETER, ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface SystemServiceLog {
    String description()  default "";
}
