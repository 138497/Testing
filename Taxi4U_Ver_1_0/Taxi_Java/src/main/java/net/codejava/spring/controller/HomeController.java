package net.codejava.spring.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import net.codejava.spring.dao.OrderDAO;
import net.codejava.spring.model.Order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * This controller routes accesses to the application to the appropriate
 * hanlder methods. 
 * @author www.codejava.net
 *
 */
@Controller
public class HomeController {

	@Autowired
	private OrderDAO orderDAO;
	
	@RequestMapping(value="/")
	public ModelAndView index(ModelAndView model) throws IOException{
		
		model.setViewName("home");
		return model;
	}
	
	@RequestMapping(value="/listOrder")
	public ModelAndView listOrder(ModelAndView model) throws IOException{
		List<Order> listOrder = orderDAO.list();
		model.addObject("listOrder", listOrder);
		model.setViewName("OrderList");
		
		return model;
	}
	
	@RequestMapping(value = "/mainHeader", method = RequestMethod.GET)
	public ModelAndView header(ModelAndView model) {
		model.setViewName("header");
		return model;
	}
	
	@RequestMapping(value = "/mainFooter", method = RequestMethod.GET)
	public ModelAndView footer(ModelAndView model) {
		model.setViewName("footer");
		return model;
	}
	
	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public ModelAndView welcome(ModelAndView model) {
		model.setViewName("welcome");
		return model;
	}
	
	@RequestMapping(value = "/listProduct", method = RequestMethod.GET)
	public ModelAndView listProduct(ModelAndView model) {
		model.setViewName("products");
		return model;
	}
	
	
	
	@RequestMapping(value = "/placeOrder", method = RequestMethod.GET)
	public ModelAndView placeOrder(ModelAndView model) {
		Order placeOrder = new Order();
		model.addObject("order", placeOrder);
		model.setViewName("OrderForm");
		return model;
	}
	
	@RequestMapping(value = "/saveOrder", method = RequestMethod.POST)
	public ModelAndView saveOrder(@ModelAttribute Order order) {
		orderDAO.saveOrUpdate(order);		
		return new ModelAndView("redirect:/listOrder");
	}
	
	@RequestMapping(value = "/deleteOrder", method = RequestMethod.GET)
	public ModelAndView deleteOrder(HttpServletRequest request) {
		int orderId = Integer.parseInt(request.getParameter("id"));
		orderDAO.delete(orderId);
		return new ModelAndView("redirect:/listOrder");
	}
	
	@RequestMapping(value = "/editOrder", method = RequestMethod.GET)
	public ModelAndView editOrder(HttpServletRequest request) {
		int orderId = Integer.parseInt(request.getParameter("id"));
		Order order = orderDAO.get(orderId);
		ModelAndView model = new ModelAndView("OrderForm");
		model.addObject("order", order);
		
		return model;
	}
}
