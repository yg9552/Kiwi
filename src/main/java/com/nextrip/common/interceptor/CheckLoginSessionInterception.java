package com.nextrip.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class CheckLoginSessionInterception extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
		if (request.getSession().getAttribute("sessSeq") != null ) {
			// by pass
		} else {
			response.sendRedirect("/nextrip/login");
            return false;
		}
		System.out.println("CheckLoginSessionInterception running");
		
		return super.preHandle(request, response, handler);
	}
}
