/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.javaguides.springmvc.dao;

import java.util.List;
import net.javaguides.springmvc.entity.Order;

/**
 *
 * @author ticho
 */
public interface IOrderDao {
    
     public List<Order> getOrders();

	public void saveOrder(Order theOrder);

	public Order getOrder(int theId);

	public void deleteOrder(int theId);
}
