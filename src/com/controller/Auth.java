package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Model.User;
import ws.Service_Manager;

/**
 * Servlet implementation class Auth
 */
@WebServlet("/Auth")
public class Auth extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Service_Manager c ;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Auth() {
        super();
       c = new Service_Manager();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out = response.getWriter();
		String email=request.getParameter("email");
		String pass=request.getParameter("password");
		User compt = (User) c.authentificate(email,pass);
		if(compt!=null)
		{
			HttpSession ses = request.getSession(true);//creation de la session	
			ses.setAttribute("cpt",compt);				   // add compte dans la session
			response.sendRedirect("JSPpage/profile.jsp");			//redirection
			
		}else
		{
			out.print("login ou mot de passe incorrect");
		}
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
