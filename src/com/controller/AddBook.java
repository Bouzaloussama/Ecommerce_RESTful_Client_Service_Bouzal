package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ws.Service_Manager;


/**
 * Servlet implementation class AddBook
 */
@WebServlet("/AddBook")
public class AddBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Service_Manager c;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddBook() {
        super();
        c = new Service_Manager();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		String admin = (String)c.findType(email,password);
		
		if(admin.equals("admin")) {
		
		String FileName = request.getParameter("file");
		String bookName = request.getParameter("bookName");
		String auteurName = request.getParameter("auteurName");
		int prix = Integer.parseInt(request.getParameter("prix"));
		c.addBook(FileName,bookName,auteurName,prix);
		
		response.sendRedirect("ADDbook.jsp");
		}
		else {
			
			response.sendRedirect("PageRegister.html");
			
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
