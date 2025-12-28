package com.project.onlinepizzaorderingsystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.onlinepizzaorderingsystem.model.Month;

@Repository
public interface MonthRepository extends JpaRepository<Month, Long> {

}
