package com.cetpa.services;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import com.cetpa.models.Customer;

@Service
public interface CustomerService
{

	void saveCustomer(Customer customer);

	List<Customer> getList(int offset,int size);

	Customer getRecord(int cid);

	void updateCustomer(Customer customer);

	void deleteCustomer(int cid);
	
	public long getTotal();

}
