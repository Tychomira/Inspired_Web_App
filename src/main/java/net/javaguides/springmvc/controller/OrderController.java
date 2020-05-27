/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.javaguides.springmvc.controller;

import java.util.List;
import net.javaguides.springmvc.entity.Order;
import net.javaguides.springmvc.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author ticho
 */
@Controller
@RequestMapping("/order")
public class OrderController {
      @Autowired
	private IOrderService orderService;
      
      @GetMapping(value = "/list")
	public String listOrders(Model theModel) {
		List<Order> theOrders = orderService.getOrders();
		theModel.addAttribute("orders", theOrders);
		return "list-order";
	}
    
}
