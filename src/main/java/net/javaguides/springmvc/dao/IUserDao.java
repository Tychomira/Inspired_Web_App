package net.javaguides.springmvc.dao;

import java.util.List;

import net.javaguides.springmvc.entity.User;

public interface IUserDao {

	public List<User> getCustomers();

	public void saveCustomer(User theCustomer);

	public User getCustomer(int theId);

	public void deleteCustomer(int theId);
	
}
