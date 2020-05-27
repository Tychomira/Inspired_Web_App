package net.javaguides.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.javaguides.springmvc.dao.UserDaoImpl;
import net.javaguides.springmvc.entity.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDaoImpl dao;
	
	@Override
	@Transactional
	public List<User> getUsers() {
		return dao.getUsers();
	}

//	@Override
//	@Transactional
//	public void saveCustomer(Customer theCustomer) {
//		customerDAO.saveCustomer(theCustomer);
//	}
//
//	@Override
//	@Transactional
//	public Customer getCustomer(int theId) {
//		return customerDAO.getCustomer(theId);
//	}
//
//	@Override
//	@Transactional
//	public void deleteCustomer(int theId) {
//		customerDAO.deleteCustomer(theId);
//	}
}





