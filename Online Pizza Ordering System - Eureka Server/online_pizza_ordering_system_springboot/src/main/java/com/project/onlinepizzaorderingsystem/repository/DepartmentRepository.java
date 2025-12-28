package com.project.onlinepizzaorderingsystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.onlinepizzaorderingsystem.model.Department;

@Repository
public interface DepartmentRepository extends JpaRepository<Department, Long> {

}
