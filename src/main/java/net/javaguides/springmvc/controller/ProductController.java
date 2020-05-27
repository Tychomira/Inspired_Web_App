/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.javaguides.springmvc.controller;

import java.util.List;
import net.javaguides.springmvc.entity.Product;
import net.javaguides.springmvc.service.IProductService;
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
@RequestMapping("/product")
public class ProductController {
    @Autowired
	private IProductService productService;
	
	@GetMapping(value = "/list")
	public String listProducts(Model theModel) {
		List<Product> theProducts = productService.getProducts();
		theModel.addAttribute("products", theProducts);
		return "list-products";
	}
}
