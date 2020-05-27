package net.javaguides.springmvc.dao;

import java.util.List;
import net.javaguides.springmvc.entity.Product;
import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDaoImpl extends AbstractDao<Integer, Product> implements IProductDAO{

    @Override
    public List<Product> findProducts() {
        Criteria criteria = createEntityCriteria();
        return (List<Product>) criteria.list();  
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