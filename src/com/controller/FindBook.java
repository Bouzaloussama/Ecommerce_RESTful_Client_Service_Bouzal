package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Model.Book;
import ws.Service_Manager;

/**
 * Servlet implementation class FindBook
 */
@WebServlet("/FindBook")
public class FindBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Service_Manager c ;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindBook() {
        super();
        // TODO Auto-generated constructor stub
        c = new Service_Manager();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bookName = request.getParameter("FindBook");
		

		if(! bookName.equals("")) {
			
			request.setAttribute("bookName", bookName);
			
			 RequestDispatcher dispatcher = request.getRequestDispatcher("BookSearch.jsp");
		        dispatcher.forward(request, response);

			
		}else {
			
			response.sendRedirect("NoResoltFound.jsp");
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
