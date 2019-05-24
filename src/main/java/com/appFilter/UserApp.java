package com.appFilter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class UserApp implements Filter {
    /**
     * Constructs a new object.
     */
    public UserApp() {
        super();
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("您已经进入了UserFilter");
        HttpServletResponse response = (HttpServletResponse)servletResponse;
        HttpServletRequest resquest = (HttpServletRequest)servletRequest;
        HttpSession session = resquest.getSession();
        if(session.getAttribute("jsp")==null){
            response.sendRedirect(resquest.getContextPath()+"/view/jsp/load.jsp");
        }
        else{
            filterChain.doFilter(servletRequest,servletResponse);
        }
    }

    @Override
    public void destroy() {

    }
}
