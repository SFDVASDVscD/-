package com.xxx.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter("/*")//拦截所有
public class Filter01 implements Filter {
    public Filter01(){}
    //初始化方法
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    //拦截、过滤方法——放行
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        //基于HTTp
        HttpServletRequest request=(HttpServletRequest) servletRequest;
        HttpServletResponse response=(HttpServletResponse) servletResponse;

        //处理请求乱码（处理post请求）
        request.setCharacterEncoding("UTF-8");

        //放行资源
        filterChain.doFilter(servletRequest,servletResponse);
    }

    //销毁方法
    @Override
    public void destroy() {

    }
}
