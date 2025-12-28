package com.project.onlinepizzaorderingsystem.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.project.onlinepizzaorderingsystem.model.Roles;
import com.project.onlinepizzaorderingsystem.repository.RolesRepository;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/api/v1")
public class RolesController {
	@Autowired
	private RolesRepository rolesRepository;

	@GetMapping("/roless")
	public List<Roles> getAllRoless() {
		return rolesRepository.findAll();
	}
}
