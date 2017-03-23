//TESTING

package net.codejava.spring.model;


public class Order {
	private int id;
	private String pickupcity;
	private String dropcity;
	private String datevalue;
	private String hourvalue;
	private String minutevalue;
	private String vehicletype;
	private String name;
	private String email;
	private String street;
	private String city;
	private String zip;
	private String ustd;
	private String telephone;

	public Order() {
	}

	public Order(String pickupcity, String dropcity,String datevalue, String hourvalue,String minutevalue, 
			String name, String email, String street, String city,
			String zip, String ustd, String telephone, String vehicletype) {
		
		this.pickupcity = pickupcity;
		this.dropcity = dropcity;
		this.datevalue = datevalue;
		this.hourvalue = hourvalue;
		this.minutevalue = minutevalue;
		this.name = name;
		this.email = email;
		this.street = street;
		this.city = city;
		this.zip = zip;
		this.ustd = ustd;
		this.telephone = telephone;
		this.vehicletype = vehicletype;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPickupcity() {
		return pickupcity;
	}

	public void setPickupcity(String pickupcity) {
		this.pickupcity = pickupcity;
	}
	
	public String getDropcity() {
		return dropcity;
	}

	public void setDropcity(String dropcity) {
		this.dropcity = dropcity;
	}
	
	public void setDatevalue(String datevalue) {
		this.datevalue = datevalue;
	}
	
	public String getDatevalue() {
		return datevalue;
	}

	public void setHourvalue(String hourvalue) {
		this.hourvalue = hourvalue;
	}
	
	public String getHourvalue() {
		return hourvalue;
	}

	public void setMinutevalue(String minutevalue) {
		this.minutevalue = minutevalue;
	}
	
	public String getMinutevalue() {
		return minutevalue;
	}

	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}
	
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}
	
	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}
	
	public String getUstd() {
		return ustd;
	}

	public void setUstd(String ustd) {
		this.ustd = ustd;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	
	public String getVehicletype() {
		return vehicletype;
	}

	public void setVehicletype(String vehicletype) {
		this.vehicletype = vehicletype;
	}

}
