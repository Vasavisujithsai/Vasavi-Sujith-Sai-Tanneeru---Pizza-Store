package com.project.onlinepizzaorderingsystem.model;

//import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Table(name = "country")
@Entity(name = "country")

public class Country {

	private long country_id;
	private String country_name;
	
	@OneToOne(fetch=FetchType.LAZY, mappedBy="country")
    private Employee employee;
	
	
	public Country() {
		
	}

	public Country(long country_id, String country_name) {
		super();
		this.country_id = country_id;
		this.country_name = country_name;
	}


	@Override
	public String toString() {
		return "Country [country_id=" + country_id + ", country_name=" + country_name + "]";
	}


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getCountry_id() {
		return country_id;
	}


	public void setCountry_id(long country_id) {
		this.country_id = country_id;
	}


	public String getCountry_name() {
		return country_name;
	}


	public void setCountry_name(String country_name) {
		this.country_name = country_name;
	}
	
}
