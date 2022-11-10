package com.cetpa.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cetpa.models.Customer;
import com.cetpa.services.CustomerService;

@Controller
public class CustomerController 
{
	@Autowired
	private CustomerService service;
	
	@RequestMapping("/")
	public String getHomeView()
	{
		return "home";
	}
	@RequestMapping("/add-customer")
	public String getAddCustomerView(Model model)
	{
		model.addAttribute("command",new Customer());
		return "add-customer";
	}
	@RequestMapping("/save-record")
	public String saveCustomerRecord(Customer customer)
	{
		service.saveCustomer(customer);
		return "save-success";
	}
	@RequestMapping("/customer-list")
	public String getCustomerList(Model model,int offset,int size)
	{
		List<Customer> list=service.getList(offset,size);
		model.addAttribute("customerlist",list);
		int count=(int)service.getTotal();
		int pages=count/size;
		if(count%size!=0)
			pages++;
		model.addAttribute("count",count);
		model.addAttribute("pn",offset);
		model.addAttribute("pages",pages);
		model.addAttribute("size",size);
		return "show-customer-list";
	}
	@RequestMapping("/search-customer")
	public String getSearchCustomerView()
	{
		return "search-customer";
	}
	@RequestMapping("/search-record")
	public String searchCustomerRecord(int cid,Model model)
	{
		Customer customer=service.getRecord(cid);
		if(customer==null)
		{
			model.addAttribute("msg","Customer record does not exist...");
			model.addAttribute("cid",cid);
			return "search-customer";
		}
		else
		{
			model.addAttribute("customer",customer);
			return "show-customer-record";
		}
	}
	@RequestMapping("/edit-customer")
	public String getEditCustomerView()
	{
		return "edit-customer";
	}
	@RequestMapping("/get-record")
	public String getCustomerRecord(int cid,Model model)
	{
		Customer customer=service.getRecord(cid);
		if(customer==null)
		{
			model.addAttribute("msg","Customer record does not exist...");
			model.addAttribute("cid",cid);
			return "edit-customer";
		}
		else
		{
			model.addAttribute("customer",customer);
			return "update-customer-record";
		}
	}
	@RequestMapping("/update-record")
	public String updateCustomerRecord(Customer customer,Model model)
	{
		service.updateCustomer(customer);
		model.addAttribute("msg","Customer record has been updated successfully");
		model.addAttribute("cid",customer.getCid());
		return "edit-customer";
	}
	@RequestMapping("/delete-customer")
	public String getDeleteCustomerView()
	{
		return "delete-customer";
	}
	@RequestMapping("/confirm-delete")
	public String getConformDeleteView(int cid,Model model)
	{
		Customer customer=service.getRecord(cid);
		if(customer==null)
		{
			model.addAttribute("msg","Customer record does not exist...");
			model.addAttribute("cid",cid);
			return "delete-customer";
		}
		else
		{
			model.addAttribute("customer",customer);
			return "confirm-customer-delete";
		}
	}
	@RequestMapping("/delete-record")
	public String deleteCustomerRecord(int cid,Model model)
	{
		service.deleteCustomer(cid);
		model.addAttribute("msg","Customer record has been deleted successfully");
		model.addAttribute("cid",cid);
		return "delete-customer";
	}
}
