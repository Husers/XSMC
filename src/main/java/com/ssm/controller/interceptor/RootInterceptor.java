package com.ssm.controller.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import static com.ssm.utils.Utils.isNull;
/**
 * Created by HuLiang
 * On 16-6-7.
 */
public class RootInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        System.err.println("被RootInterceptor拦截");
        if (isNull(httpServletRequest.getSession().getAttribute("User"))){
            System.err.println("未登录");
            httpServletResponse.sendRedirect("/login");
            return false;
        }else{
            System.err.println("已登录");
            return true;
        }
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
