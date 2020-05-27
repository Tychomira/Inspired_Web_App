/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.javaguides.springmvc.service;

import java.util.List;
import net.javaguides.springmvc.entity.Product;

/**
 *
 * @author ticho
 */
public interface IProductService {

    public List<Product> getProducts();

    public void saveProduct(Product theProduct);

    public Product getProduct(int theId);

    public void deleteProduct(int theId);
}
