package webtest.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import webtest.model.Order;
import webtest.service.DbService;

@WebServlet("/Checkout")
public class Checkout extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Checkout() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		float subTotal = Float.parseFloat(request.getParameter("subtotal"));
		float tax = Float.parseFloat(request.getParameter("tax"));
		float grandTotal = Float.parseFloat(request.getParameter("grandtotal"));
		DbService dbService = new DbService();
		HttpSession session = request.getSession();
		String userEmail = (String) session.getAttribute("loggedInUser");
		int userId = dbService.getUserID(userEmail);
		Order order = (Order) getServletContext().getAttribute("order");
		dbService.setOrderAmount(order);
		request.getRequestDispatcher("/WEB-INF/Checkout.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("Confirm");
	}
}
