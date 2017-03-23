package net.codejava.spring.dao;

import java.util.List;

import net.codejava.spring.model.Order;

/**
 * Defines DAO operations for the order model.
 * @author www.codejava.net
 *
 */
public interface OrderDAO {
	
	public void saveOrUpdate(Order order);
	
	public void delete(int orderId);
	
	public Order get(int orderId);
	
	public List<Order> list();
}
