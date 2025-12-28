package com.project.onlinepizzaorderingsystem.model;

//import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Table(name = "roles")
@Entity(name = "roles")

public class Roles {

	private long roles_id;
	private String roles_name;
	
	@OneToOne(fetch=FetchType.LAZY, mappedBy="roles")
    private Employee employee;
	
	
	public Roles() {
		
	}

	public Roles(long roles_id, String roles_name) {
		super();
		this.roles_id = roles_id;
		this.roles_name = roles_name;
	}


	@Override
	public String toString() {
		return "Roles [roles_id=" + roles_id + ", roles_name=" + roles_name + "]";
	}


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getRoles_id() {
		return roles_id;
	}


	public void setRoles_id(long roles_id) {
		this.roles_id = roles_id;
	}


	public String getRoles_name() {
		return roles_name;
	}


	public void setRoles_name(String roles_name) {
		this.roles_name = roles_name;
	}
	
}
