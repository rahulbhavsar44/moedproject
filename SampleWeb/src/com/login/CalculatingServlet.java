package com.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.dao.CalculateDao;
import com.logindata.CalculateUnits;
import com.logindata.CalculateWatt;


@WebServlet("/CalculatingServlet")
public class CalculatingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CalculatingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String appliance_name = request.getParameter("appliance_name");
		
		CalculateDao cdao=new CalculateDao(); 
		if(appliance_name!="") 
		{
		
			CalculateUnits calci= cdao.calculateUnit(appliance_name);
			request.setAttribute("calcdata", calci);
		}

		
		String appliance_name1 = request.getParameter("appliance_name1");
		CalculateUnits.CalculateWatt cwatt =cdao.calculateWatt(appliance_name1);
		
		request.setAttribute("wattdata", cwatt);
		
		RequestDispatcher rd = request.getRequestDispatcher("welcome.jsp");
		rd.forward(request, response);		
	}
	

	
	

}
