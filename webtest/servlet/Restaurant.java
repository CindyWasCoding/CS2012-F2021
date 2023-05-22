package webtest.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webtest.model.ConfirmedOrder;
import webtest.service.DbService;

@WebServlet("/Restaurant")
public class Restaurant extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Restaurant() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DbService DB = new DbService();
		ConfirmedOrder order = DB.getOrder();
		List<ConfirmedOrder> orderList = new ArrayList<ConfirmedOrder>();
		orderList.add(order);
		getServletContext().setAttribute("orderList", orderList);
		request.getRequestDispatcher("/WEB-INF/Restaurant.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int orderId = Integer.parseInt(request.getParameter("orderId"));
		List<ConfirmedOrder> orderList = (List<ConfirmedOrder>) getServletContext().getAttribute("orderList");
		for (ConfirmedOrder order : orderList) {
			if (order.getOrderId() == orderId) {
				orderList.remove(order);
				break;
			}
		}
		request.getRequestDispatcher("/WEB-INF/Restaurant.jsp").forward(request, response);
	}
}
