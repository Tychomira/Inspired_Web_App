/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.javaguides.springmvc.dao;
import net.javaguides.springmvc.entity.Product;
import java.util.List;

/**
 *
 * @author ticho
 */
public interface IProductDAO {
    public List<Product> findProducts();

	public void saveProduct(Product theProduct);

	public Product getProduct(int theId);

	public void deleteProduct(int theId);
	
}
