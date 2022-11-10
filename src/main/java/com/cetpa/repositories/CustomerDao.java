package com.cetpa.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cetpa.models.Customer;

public interface CustomerDao extends JpaRepository<Customer,Integer> 
{
}
