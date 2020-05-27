/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.javaguides.springmvc.service;

import java.util.List;
import net.javaguides.springmvc.dao.IProductDAO;
import net.javaguides.springmvc.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author ticho
 */
@Service
public class ProductServiceImpl implements IProductService {

        @Autowired
	private IProductDAO productDAO;
        
    @Override
    @Transactional
    public List<Product> getProducts() {
      return productDAO.getProducts();
    }

    @Override
    public void saveProduct(Product theProduct) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Product getProduct(int theId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void deleteProduct(int theId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
