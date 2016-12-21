package com.zx.omp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by simba on 2016/12/21 0021.
 */
@Controller
public class IndexController {
    @RequestMapping("/")
    public String index() {
        return "/login";
    }
}
