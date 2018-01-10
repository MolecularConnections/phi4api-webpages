package com.molcon.phibase.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.DispatcherServlet;

public class PhibaseDispatcherServlet extends DispatcherServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doService(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		HttpSession session=request.getSession();
		
		String userName = session.getAttribute("userName")==null?null:(String)session.getAttribute("userName");
		
		String requestURI = request.getRequestURI();

		boolean goToLogin	=	false;
		if(requestURI.matches("spotLight.*") && userName==null){
			goToLogin	=	true;
		}
		
  	  	if (goToLogin)
  	  	{
  	  	  session = request.getSession(true);
  		  RequestDispatcher rd = getServletContext().getRequestDispatcher("/loginSpotLight.htm");
          rd.forward(request, response);
        } else
        {
            super.doService(request, response);
        }
	}
}
