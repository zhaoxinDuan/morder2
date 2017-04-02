package com.zx.omp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.security.Principal;

/**
 * Created by simba on 2016/12/21 0021.
 */
@Controller
public class IndexController {
    @RequestMapping("/")
    public String indexpage() {
        return "login";
    }

    @RequestMapping("/user/userindex")
    public String userindex() {
        return "user/userindex";
    }
    @RequestMapping("/userlogin")
    public String userlogin() {
        return "user/userlogin";
    }

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/index")
    public String index(Principal user) {

        return "index";
    }

    @RequestMapping("/flot")
    public String flot() {
        return "flot";
    }

    @RequestMapping("/morris")
    public String morris() {
        return "morris";
    }

    @RequestMapping("/tables")
    public String tables() {
        return "tables";
    }

    @RequestMapping("/forms")
    public String forms() {
        return "forms";
    }

    @RequestMapping("/panels-wells")
    public String panelsWells() {
        return "panels-wells";
    }

    @RequestMapping("/buttons")
    public String buttons() {
        return "buttons";
    }

    @RequestMapping("/notifications")
    public String notifications() {
        return "notifications";
    }

    @RequestMapping("/typography")
    public String typography() {
        return "typography";
    }

    @RequestMapping("/icons")
    public String icons() {
        return "icons";
    }

    @RequestMapping("/grid")
    public String grid() {
        return "grid";
    }

    @RequestMapping("/blank")
    public String blank() {
        return "blank";
    }
}
