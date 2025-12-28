package com.project.onlinepizzaorderingsystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.onlinepizzaorderingsystem.model.Country;

@Repository
public interface CountryRepository extends JpaRepository<Country, Long> {

}
