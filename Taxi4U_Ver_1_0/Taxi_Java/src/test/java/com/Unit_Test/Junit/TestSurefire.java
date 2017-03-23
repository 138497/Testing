package com.Unit_Test.Junit;

import static org.junit.Assert.*;
import net.codejava.spring.model.Order;

import org.junit.Test;

public class TestSurefire {

	@Test
	public void test_Order() {
		System.out.println("Now Testing Method:Order ");

		// Constructor
		Order instance = new Order("Bangalore", "Chennai", "16/11/2015", "15",
				"35", "John", "John@mail.com", "street one", "Coimbatore",
				"646162", "TN", "1234567890", "Sedan");

		// Check Test Verification Points
		assertEquals("Bangalore", instance.getPickupcity());
		assertEquals("Chennai", instance.getDropcity());
		assertEquals("16/11/2015", instance.getDatevalue());
		assertEquals("15", instance.getHourvalue());
		assertEquals("35", instance.getMinutevalue());
		assertEquals("John", instance.getName());
		assertEquals("John@mail.com", instance.getEmail());
		assertEquals("street one", instance.getStreet());
		assertEquals("Coimbatore", instance.getCity());
		assertEquals("646162", instance.getZip());
		assertEquals("TN", instance.getUstd());
		assertEquals("1234567890", instance.getTelephone());
		assertEquals("Sedan", instance.getVehicletype());

	}

	/*
	 * Testing Conditon(s): Default
	 */
	@Test
	public void test_getId() {
		System.out.println("Now Testing Method:getId ");

		// Constructor
		Order instance = new Order();

		// Get expected result and result
		Object expResult = 1;
		instance.setId(1);
		Object result = instance.getId();

		// Check Return value
		assertEquals(expResult, result);

	}

	/*
	 * Testing Conditon(s): Default
	 */
	@Test
	public void test_setId() {
		System.out.println("Now Testing Method:setId ");

		// Constructor
		Order instance = new Order();

		// Call Method
		instance.setId(1);

		// Check Test Verification Points
		assertEquals(1, instance.getId());

	}

	@Test
	public void test_getPickupcity() {
		System.out.println("Now Testing Method:getPickupcity ");

		// Constructor
		Order instance = new Order();

		// Get expected result and result
		Object expResult = "Bangalore";
		instance.setPickupcity("Bangalore");
		Object result = instance.getPickupcity();

		// Check Return value
		assertEquals(expResult, result);

	}

	/*
	 * Testing Conditon(s): Default
	 */
	@Test
	public void test_setPickupcity() {
		System.out.println("Now Testing Method:setPickupcity ");

		// Constructor
		Order instance = new Order();

		// Call Method
		instance.setPickupcity("Bangalore");

		// Check Test Verification Points
		assertEquals("Bangalore", instance.getPickupcity());

	}

	@Test
	public void test_getDropcity() {
		System.out.println("Now Testing Method:getDropcity ");

		// Constructor
		Order instance = new Order();

		// Get expected result and result
		Object expResult = "Chennai";
		instance.setDropcity("Chennai");
		Object result = instance.getDropcity();

		// Check Return value
		assertEquals(expResult, result);

	}

	/*
	 * Testing Conditon(s): Default
	 */
	@Test
	public void test_setDropcity() {
		System.out.println("Now Testing Method:setDropcity ");

		// Constructor
		Order instance = new Order();

		// Call Method
		instance.setDropcity("Chennai");

		// Check Test Verification Points
		assertEquals("Chennai", instance.getDropcity());

	}

	@Test
	public void test_getDatevalue() {
		System.out.println("Now Testing Method:getDatevalue ");

		// Constructor
		Order instance = new Order();

		// Get expected result and result
		Object expResult = "16/11/2015";
		instance.setDatevalue("16/11/2015");
		Object result = instance.getDatevalue();

		// Check Return value
		assertEquals(expResult, result);

	}

	/*
	 * Testing Conditon(s): Default
	 */
	@Test
	public void test_setDatevalue() {
		System.out.println("Now Testing Method:setDatevalue ");

		// Constructor
		Order instance = new Order();

		// Call Method
		instance.setDatevalue("16/11/2015");

		// Check Test Verification Points
		assertEquals("16/11/2015", instance.getDatevalue());

	}

	@Test
	public void test_getHourvalue() {
		System.out.println("Now Testing Method:getHourvalue ");

		// Constructor
		Order instance = new Order();

		// Get expected result and result
		Object expResult = "16";
		instance.setHourvalue("16");
		Object result = instance.getHourvalue();

		// Check Return value
		assertEquals(expResult, result);

	}

	/*
	 * Testing Conditon(s): Default
	 */
	@Test
	public void test_setHourvalue() {
		System.out.println("Now Testing Method:setHourvalue ");

		// Constructor
		Order instance = new Order();

		// Call Method
		instance.setHourvalue("16");

		// Check Test Verification Points
		assertEquals("16", instance.getHourvalue());

	}

	@Test
	public void test_getMinutevalue() {
		System.out.println("Now Testing Method:getMinutevalue ");

		// Constructor
		Order instance = new Order();

		// Get expected result and result
		Object expResult = "35";
		instance.setMinutevalue("35");
		Object result = instance.getMinutevalue();

		// Check Return value
		assertEquals(expResult, result);

	}

	/*
	 * Testing Conditon(s): Default
	 */
	@Test
	public void test_setMinutevalue() {
		System.out.println("Now Testing Method:setMinutevalue ");

		// Constructor
		Order instance = new Order();

		// Call Method
		instance.setMinutevalue("35");

		// Check Test Verification Points
		assertEquals("35", instance.getMinutevalue());

	}

	/*
	 * Testing Conditon(s): Default
	 */
	@Test
	public void test_getName() {
		System.out.println("Now Testing Method:getName ");

		// Constructor
		Order instance = new Order();

		// Get expected result and result
		Object expResult = "John";
		instance.setName("John");
		Object result = instance.getName();

		// Check Return value
		assertEquals(expResult, result);

	}

	/*
	 * Testing Conditon(s): Default
	 */
	@Test
	public void test_setName() {
		System.out.println("Now Testing Method:setName ");

		// Constructor
		Order instance = new Order();

		// Call Method
		instance.setName("John");

		// Check Test Verification Points
		assertEquals("John", instance.getName());

	}

	/*
	 * Testing Conditon(s): Default
	 */
	@Test
	public void test_getEmail() {
		System.out.println("Now Testing Method:getEmail ");

		// Constructor
		Order instance = new Order();

		// Get expected result and result
		Object expResult = "John@mail.com";
		instance.setEmail("John@mail.com");
		Object result = instance.getEmail();

		// Check Return value
		assertEquals(expResult, result);

	}

	/*
	 * Testing Conditon(s): Default
	 */
	@Test
	public void test_setEmail() {
		System.out.println("Now Testing Method:setEmail ");

		// Constructor
		Order instance = new Order();

		// Call Method
		instance.setEmail("John@mail.com");

		// Check Test Verification Points
		assertEquals("John@mail.com", instance.getEmail());

	}

	/*
	 * Testing Conditon(s): Default
	 */
	@Test
	public void test_getStreet() {
		System.out.println("Now Testing Method:getStreet ");

		// Constructor
		Order instance = new Order();

		// Get expected result and result
		Object expResult = "street one";
		instance.setStreet("street one");
		Object result = instance.getStreet();

		// Check Return value
		assertEquals(expResult, result);

	}

	/*
	 * Testing Conditon(s): Default
	 */
	@Test
	public void test_getCity() {
		System.out.println("Now Testing Method:getCity ");

		// Constructor
		Order instance = new Order();

		// Get expected result and result
		Object expResult = "Coimbatore";
		instance.setCity("Coimbatore");
		Object result = instance.getCity();

		// Check Return value
		assertEquals(expResult, result);

	}

	/*
	 * Testing Conditon(s): Default
	 */
	@Test
	public void test_getstd() {
		System.out.println("Now Testing Method:getUstd ");

		// Constructor
		Order instance = new Order();

		// Get expected result and result
		Object expResult = "TN";
		instance.setUstd("TN");
		Object result = instance.getUstd();

		// Check Return value
		assertEquals(expResult, result);

	}

	/*
	 * Testing Conditon(s): Default
	 */
	@Test
	public void test_getZip() {
		System.out.println("Now Testing Method:getZip ");

		// Constructor
		Order instance = new Order();

		// Get expected result and result
		Object expResult = "641001";
		instance.setZip("641001");
		Object result = instance.getZip();

		// Check Return value
		assertEquals(expResult, result);

	}

	/*
	 * Testing Conditon(s): Default
	 */
	@Test
	public void test_setStreet() {
		System.out.println("Now Testing Method:setStreet ");

		// Constructor
		Order instance = new Order();

		// Call Method
		instance.setStreet("steer");

		// Check Test Verification Points
		assertEquals("steer", instance.getStreet());

	}

	/*
	 * Testing Conditon(s): Default
	 */
	@Test
	public void test_setCity() {
		System.out.println("Now Testing Method:setCity ");

		// Constructor
		Order instance = new Order();

		// Call Method
		instance.setCity("Coimbatre");

		// Check Test Verification Points
		assertEquals("Coimbatre", instance.getCity());

	}

	/*
	 * Testing Conditon(s): Default
	 */
	@Test
	public void test_setZip() {
		System.out.println("Now Testing Method:setZip ");

		// Constructor
		Order instance = new Order();

		// Call Method
		instance.setZip("1112222");

		// Check Test Verification Points
		assertEquals("1112222", instance.getZip());

	}

	/*
	 * Testing Conditon(s): Default
	 */
	@Test
	public void test_setstd() {
		System.out.println("Now Testing Method:setUstd ");

		// Constructor
		Order instance = new Order();

		// Call Method
		instance.setUstd("TN");

		// Check Test Verification Points
		assertEquals("TN", instance.getUstd());

	}

	/*
	 * Testing Conditon(s): Default
	 */
	@Test
	public void test_getTelephone() {
		System.out.println("Now Testing Method:getTelephone ");

		// Constructor
		Order instance = new Order();

		// Get expected result and result
		Object expResult = "1234567890";
		instance.setTelephone("1234567890");
		Object result = instance.getTelephone();

		// Check Return value
		assertEquals(expResult, result);

	}

	/*
	 * Testing Conditon(s): Default
	 */
	@Test
	public void test_setTelephone() {
		System.out.println("Now Testing Method:setTelephone");

		// Constructor
		Order instance = new Order();

		// Call Method
		instance.setTelephone("1234567890");

		// Check Test Verification Points
		assertEquals("1234567890", instance.getTelephone());

	}

	@Test
	public void test_getVehicleType() {
		System.out.println("Now Testing Method:getVehicletype ");

		// Constructor
		Order instance = new Order();

		// Get expected result and result
		Object expResult = "Sedan";
		instance.setVehicletype("Sedan");
		Object result = instance.getVehicletype();

		// Check Return value
		assertEquals(expResult, result);

	}

	@Test
	public void test_setVehicleType() {
		System.out.println("Now Testing Method:setVehicletype");

		// Constructor
		Order instance = new Order();

		// Call Method
		instance.setVehicletype("Sedan");

		// Check Test Verification Points
		assertEquals("Sedan", instance.getVehicletype());

	}

}
