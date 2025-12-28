package com.project.onlinepizzaorderingsystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.onlinepizzaorderingsystem.model.Saluation;

@Repository
public interface SaluationRepository extends JpaRepository<Saluation, Long> {

}
