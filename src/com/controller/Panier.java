package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Model.Book;
import ws.Service_Manager;

/**
 * Servlet implementation class Panier
 */
@WebServlet("/Panier")
public class Panier extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Service_Manager c;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Panier() {
        super();
        c = new Service_Manager();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id =request.getParameter("idBook");
		String cnt =request.getParameter("cont");
		String idDelet =request.getParameter("idDelet");
		
		
		if(id != null) {
			int id1 =Integer.parseInt(id);
		  Book book=(Book)c.findBookById(id1);
		  c.addBookToPanier(book.getBookName(),book.getAuteurName(),book.getPrix());
	      response.sendRedirect("Home.jsp");
		}
		
		if(idDelet != null) {
			int id2 =Integer.parseInt(idDelet);
		  c.deletBookPanier(id2);
		  HttpSession ses = request.getSession(true);//creation de la session	
			ses.setAttribute("TotalPrixPanier",c.totalPrixe());
	      response.sendRedirect("panier.jsp");
		}
		
		if(cnt != null) {
			HttpSession ses = request.getSession(true);//creation de la session	
			ses.setAttribute("TotalPrixPanier",c.totalPrixe());		
	      response.sendRedirect("panier.jsp");
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
