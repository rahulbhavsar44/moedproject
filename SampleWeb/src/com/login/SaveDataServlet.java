package com.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.dao.StoreDataDao;
import com.logindata.StoreData;

@WebServlet("/SaveDataServlet")
public class SaveDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	StoreDataDao storedao=new StoreDataDao();
	
    public SaveDataServlet() {
        super();
       
    }
    
    
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	}

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String fname = request.getParameter("fullname");
			String uname = request.getParameter("username");
			String mobileno = request.getParameter("mobile_no");
			String email_id = request.getParameter("email");
			String pass_reg = request.getParameter("password");
			
			StoreData store=new StoreData();
			store.setFullname(fname);
			store.setUsername(uname);
			store.setMobile_no(mobileno);
			store.setEmail(email_id);
			store.setPassword1(pass_reg);
			
			storedao.registerUser(store);
		}catch(Exception e) 
		{
			e.printStackTrace();
		}
		response.sendRedirect("login.jsp");
	}



	

}
