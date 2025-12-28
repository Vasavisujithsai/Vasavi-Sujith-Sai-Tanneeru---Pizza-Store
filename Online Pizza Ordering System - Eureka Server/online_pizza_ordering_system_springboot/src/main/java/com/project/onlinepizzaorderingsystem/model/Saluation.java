package com.project.onlinepizzaorderingsystem.model;

//import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Table(name = "saluation")
@Entity(name = "saluation")

public class Saluation {

	private long saluation_id;
	private String saluation_name;
	
	@OneToOne(fetch=FetchType.LAZY, mappedBy="saluation")
    private Employee employee;
	
	
	public Saluation() {
		
	}

	public Saluation(long saluation_id, String saluation_name) {
		super();
		this.saluation_id = saluation_id;
		this.saluation_name = saluation_name;
	}


	@Override
	public String toString() {
		return "Saluation [saluation_id=" + saluation_id + ", saluation_name=" + saluation_name + "]";
	}


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getSaluation_id() {
		return saluation_id;
	}


	public void setSaluation_id(long saluation_id) {
		this.saluation_id = saluation_id;
	}


	public String getSaluation_name() {
		return saluation_name;
	}


	public void setSaluation_name(String saluation_name) {
		this.saluation_name = saluation_name;
	}
	
}
