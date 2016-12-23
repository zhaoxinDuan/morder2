package com.zx.omp.controller.rest.oauth;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by simba on 2016/12/23 0023.
 */
@Controller
@RequestMapping("/rest/oauth/")
//@PreAuthorize("#oauth2.hasScope('xxxx')")
public class Oauth2Controller {

    @RequestMapping("test")
    @ResponseBody
    private String test(Integer test){
        return "oauth test"+test;
    }
}
