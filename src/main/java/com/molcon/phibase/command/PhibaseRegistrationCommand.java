package com.molcon.phibase.command;

import java.io.Serializable;

public class PhibaseRegistrationCommand implements Serializable{

	private String name;
	private String organisation;
	private String organisationtype;
	private String email;
	private String department;
	private String street;
	private String city;
	private String zip;
	private String state;
	private String country;

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getOrganisation() {
		return organisation;
	}
	public void setOrganisation(String organisation) {
		this.organisation = organisation;
	}
	public String getOrganisationtype() {
		return organisationtype;
	}
	public void setOrganisationtype(String organisationtype) {
		this.organisationtype = organisationtype;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
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
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	@Override
	public String toString() {
		return "PhibaseRegistrationCommand [name=" + name + ", organisation="
				+ organisation + ", organisationtype=" + organisationtype
				+ ", email=" + email + ", department=" + department
				+ ", street=" + street + ", city=" + city + ", zip=" + zip
				+ ", state=" + state + ", country=" + country + "]";
	}
	
	
	
	
	
	
}
