package net.codejava.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import net.codejava.spring.model.Order;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

/**
 * An implementation of the OrderDAO interface.
 * @author www.codejava.net
 *
 */
public class OrderDAOImpl implements OrderDAO {

	private JdbcTemplate jdbcTemplate;
	
	public OrderDAOImpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public void saveOrUpdate(Order order) {
		if (order.getId() > 0) {
			// update
			String sql = "UPDATE tblOrder SET pickupcity=?, dropcity=?, datevalue=?, hourvalue=?, minutevalue=?,"
					+ "name=?, email=?, street=?, city=?, zip=?, ustd=?, "
						+ "telephone=?, vehicletype=? WHERE order_id=?";
			jdbcTemplate.update(sql, order.getPickupcity(), order.getDropcity(), 
					order.getDatevalue(),order.getHourvalue(),order.getMinutevalue(),
					order.getName(), order.getEmail(),
					order.getStreet(),order.getCity(),order.getZip(),
					order.getUstd(), order.getTelephone(), order.getVehicletype(), order.getId());
		} else {
			// insert
			String sql = "INSERT INTO tblOrder (pickupcity, dropcity, datevalue, hourvalue, minutevalue, "
					+ "name, email, street, city, zip, ustd, telephone, vehicletype)"
						+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			jdbcTemplate.update(sql, order.getPickupcity(), order.getDropcity(),
					order.getDatevalue(),order.getHourvalue(),order.getMinutevalue(),
					order.getName(), order.getEmail(),
					order.getStreet(),order.getCity(),order.getZip(),
					order.getUstd(), order.getTelephone(), order.getVehicletype());
		}
		
	}

	@Override
	public void delete(int orderId) {
		String sql = "DELETE FROM tblOrder WHERE order_id=?";
		jdbcTemplate.update(sql, orderId);
	}

	@Override
	public List<Order> list() {
		String sql = "SELECT * FROM tblOrder";
		List<Order> listOrder = jdbcTemplate.query(sql, new RowMapper<Order>() {

			@Override
			public Order mapRow(ResultSet rs, int rowNum) throws SQLException {
				Order aOrder = new Order();
	
				aOrder.setId(rs.getInt("order_id"));
				aOrder.setPickupcity(rs.getString("pickupcity"));
				aOrder.setDropcity(rs.getString("dropcity"));
				aOrder.setDatevalue(rs.getString("datevalue"));
				aOrder.setHourvalue(rs.getString("hourvalue"));
				aOrder.setMinutevalue(rs.getString("minutevalue"));
				aOrder.setVehicletype(rs.getString("vehicletype"));
				aOrder.setName(rs.getString("name"));
				aOrder.setEmail(rs.getString("email"));
				aOrder.setStreet(rs.getString("street"));
				aOrder.setCity(rs.getString("city"));
				aOrder.setZip(rs.getString("zip"));
				aOrder.setUstd(rs.getString("ustd"));
				aOrder.setTelephone(rs.getString("telephone"));
				
				return aOrder;
			}
			
		});
		
		return listOrder;
	}

	@Override
	public Order get(int orderId) {
		String sql = "SELECT * FROM tblOrder WHERE order_id=" + orderId;
		return jdbcTemplate.query(sql, new ResultSetExtractor<Order>() {

			@Override
			public Order extractData(ResultSet rs) throws SQLException,
					DataAccessException {
				if (rs.next()) {
					Order order = new Order();
					order.setId(rs.getInt("order_id"));
					order.setPickupcity(rs.getString("pickupcity"));
					order.setDropcity(rs.getString("dropcity"));
					order.setDatevalue(rs.getString("datevalue"));
					order.setHourvalue(rs.getString("hourvalue"));
					order.setMinutevalue(rs.getString("minutevalue"));
					order.setVehicletype(rs.getString("vehicletype"));
					order.setName(rs.getString("name"));
					order.setEmail(rs.getString("email"));
					order.setStreet(rs.getString("street"));
					order.setCity(rs.getString("city"));
					order.setZip(rs.getString("zip"));
					order.setUstd(rs.getString("ustd"));
					order.setTelephone(rs.getString("telephone"));
					return order;
				}
				
				return null;
			}
			
		});
	}

}
