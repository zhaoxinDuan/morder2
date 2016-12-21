package com.zx.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by simba on 2016/12/20 0020.
 */
//@Configuration
//@WebFilter(filterName = "urlRedirectFilter", urlPatterns = "/*")
public class UrlRedirectFilter implements Filter {
    public void init(FilterConfig arg0) throws ServletException {
    }

    public void destroy() {
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        String uri = req.getRequestURI().toLowerCase().trim();

        // 不接受任何jsp请求
        if (uri.endsWith(".jsp")) {
            return;
        }
//        只拦截后台管理的
        if (!uri.startsWith("/admin/")) {
            chain.doFilter(request, response);
            return;
        }

        if (
                uri.startsWith("/admin/loginpage.admin")
                        || uri.startsWith("/admin/login.admin")
                ) {
            chain.doFilter(request, response);
            return;
        } else {
            if (((HttpServletRequest) request).getSession().getAttribute("adminInfo") == null) {
                resp.sendRedirect("/");
                return;
            }else{
                chain.doFilter(request, response);
                return;
            }
        }
    }
}
