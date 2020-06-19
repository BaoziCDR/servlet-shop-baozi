package com.management.web.controller.order;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.management.entities.Order;
import com.management.service.OrderService;
import com.management.service.impl.OrderServiceImpl;
import com.management.utils.WebUtils;

/**
 * 添加功能
 */
@WebServlet("/addOrder")
public class AddOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
//		HttpSession session = request.getSession();
//		if (session.getAttribute("admin") == null) {
//			response.sendRedirect(request.getContextPath() + "/Login");
//			return;
//		}
		OrderService service = new OrderServiceImpl();
		Order order = WebUtils.request2Bean(request, Order.class);
		service.RegistOrder(order);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
