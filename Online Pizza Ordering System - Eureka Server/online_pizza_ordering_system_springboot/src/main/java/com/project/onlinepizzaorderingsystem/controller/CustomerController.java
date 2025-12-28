package com.project.onlinepizzaorderingsystem.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.Query;
import jakarta.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.onlinepizzaorderingsystem.exception.ResourceNotFoundException;
import com.project.onlinepizzaorderingsystem.model.Customer;
import com.project.onlinepizzaorderingsystem.model.Employee;
import com.project.onlinepizzaorderingsystem.model.Login;
import com.project.onlinepizzaorderingsystem.repository.CustomerRepository;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/api/v1")
public class CustomerController {

	@Autowired
	private CustomerRepository customerRepository;
	
	@PersistenceContext
    private EntityManager entityManager;

	@GetMapping("/customers")
	public List<Customer> getAllCustomers() {
		return customerRepository.findAll();
	}

	@GetMapping("/customers/search/{name}")
	public List<Customer> getCustomerByName(@PathVariable(value = "name") String customerName) {
			return customerRepository.serchUserByName(customerName);
	}

	
	@GetMapping("/customers/{id}")
	public ResponseEntity<Customer> getCustomerById(@PathVariable(value = "id") Long customerId)
			throws ResourceNotFoundException {
		Customer customer = customerRepository.findById(customerId)
				.orElseThrow(() -> new ResourceNotFoundException("Customer not found for this id :: " + customerId));
		return ResponseEntity.ok().body(customer);
	}

	@PostMapping("/customers")
	public Customer createCustomer(@Valid @RequestBody Customer customer) {
		return customerRepository.save(customer);
	}

	@PutMapping("/customers/{id}")
	public ResponseEntity<Customer> updateCustomer(@PathVariable(value = "id") Long customerId,
			@Valid @RequestBody Customer customerDetails) throws ResourceNotFoundException {
		final Customer updatedCustomer = customerRepository.save(customerDetails);
		return ResponseEntity.ok(updatedCustomer);
	}

	@DeleteMapping("/customers/{id}")
	public Map<String, Boolean> deleteCustomer(@PathVariable(value = "id") Long customerId)
			throws ResourceNotFoundException {
		Customer customer = customerRepository.findById(customerId)
				.orElseThrow(() -> new ResourceNotFoundException("Customer not found for this id :: " + customerId));
		
		customerRepository.delete(customer);
		
		
		Map<String, Boolean> response = new HashMap<>();
		response.put("deleted", Boolean.TRUE);
		return response;
	}
	
	@PostMapping("/customer-login")
	public Customer checkLogin(@Valid @RequestBody Login login) {
		Customer loginObj = customerRepository.checkLogin(login.getLogin_email(), login.getLogin_password());
		System.out.print(loginObj);
		return loginObj;//this.getLoginData(loginObj.getLogin_id());
	}
}
