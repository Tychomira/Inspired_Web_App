package net.javaguides.springmvc.service;

import java.util.List;

import net.javaguides.springmvc.entity.User;

public interface CustomerService {

	public List<User> getCustomers();

	public void saveCustomer(User theCustomer);

	public User getCustomer(int theId);

	public void deleteCustomer(int theId);
	
}
