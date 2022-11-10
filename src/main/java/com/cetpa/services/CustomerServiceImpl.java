package com.cetpa.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.cetpa.models.Customer;
import com.cetpa.repositories.CustomerDao;

@Service
public class CustomerServiceImpl implements CustomerService 
{
	@Autowired
	private CustomerDao dao;

	public void saveCustomer(Customer customer) 
	{
		dao.save(customer);
	}
	public List<Customer> getList(int offset,int size) 
	{
		Page<Customer> c=dao.findAll(PageRequest.of(offset,size).withSort(Sort.by("firstname")));
		List<Customer> list=c.toList();
		return list;
	}
	public Customer getRecord(int cid)
	{
		return dao.findById(cid).orElse(null);
	}
	public void updateCustomer(Customer customer) 
	{
		dao.save(customer);
	}
	public void deleteCustomer(int cid) 
	{
		dao.deleteById(cid);
	}
	public long getTotal()
	{
		return dao.count();
	}
}
