package com.project.onlinepizzaorderingsystem.model;

//import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Table(name = "month")
@Entity(name = "month")

public class Month {

	private long month_id;
	private String month_name;
	
	@OneToOne(fetch=FetchType.LAZY, mappedBy="month")
    private Employee employee;
	
	
	public Month() {
		
	}

	public Month(long month_id, String month_name) {
		super();
		this.month_id = month_id;
		this.month_name = month_name;
	}


	@Override
	public String toString() {
		return "Month [month_id=" + month_id + ", month_name=" + month_name + "]";
	}


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getMonth_id() {
		return month_id;
	}


	public void setMonth_id(long month_id) {
		this.month_id = month_id;
	}


	public String getMonth_name() {
		return month_name;
	}


	public void setMonth_name(String month_name) {
		this.month_name = month_name;
	}
	
}
