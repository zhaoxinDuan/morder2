package com.zx.omp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by simba on 2017/4/2 0002.
 */
@Controller
@RequestMapping("/morder")
public class HomeController {
    @RequestMapping("/home")
    public String index() {
        return "morder/home";
    }
}
