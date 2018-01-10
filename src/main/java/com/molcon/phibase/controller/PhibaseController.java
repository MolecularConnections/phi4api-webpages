/*package com.molcon.phibase.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.DispatcherServlet;

public class PhibaseController extends DispatcherServlet{

	private static final long serialVersionUID = -696283085613552902L;

	@Override
	protected void doService(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		HttpSession session=request.getSession();

		String requestURI = request.getRequestURI();


  	  boolean gonext	=	false;
  	  if(requestURI.endsWith(".htm"))
  	  	  gonext	=	true; 


  	  	if (!gonext || session==null)
  	  	{

  		  RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
          rd.forward(request, response);
        } else
        {
            super.doService(request, response);
        }
	}
}*/
