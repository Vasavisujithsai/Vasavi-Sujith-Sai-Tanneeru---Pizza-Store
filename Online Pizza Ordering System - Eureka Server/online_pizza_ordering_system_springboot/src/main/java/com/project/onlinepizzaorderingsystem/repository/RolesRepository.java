package com.project.onlinepizzaorderingsystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.onlinepizzaorderingsystem.model.Roles;

@Repository
public interface RolesRepository extends JpaRepository<Roles, Long> {

}
