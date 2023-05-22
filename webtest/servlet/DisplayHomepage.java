package webtest.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webtest.service.DbService;

@WebServlet(urlPatterns = "/DisplayHomepage", loadOnStartup = 1)
public class DisplayHomepage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DisplayHomepage() {
		super();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DbService dbService = new DbService();
		request.setAttribute("menuList", dbService.getMenuItems());
		dbService.close();
		request.getRequestDispatcher("/WEB-INF/DisplayHomepage.jsp").forward(request, response); // display the home																						// page view
	}
}
