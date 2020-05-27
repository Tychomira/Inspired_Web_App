package net.javaguides.springmvc.dao;

import java.util.List;
import net.javaguides.springmvc.entity.Product;
import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDaoImpl extends AbstractDao<Integer, Product> implements IObjectDao {

//    @Autowired
//    private SessionFactory sessionFactory;
//    @Override
//    public List<Product> getProducts() {
//        Session session = sessionFactory.getCurrentSession();
//        CriteriaBuilder cb = session.getCriteriaBuilder();
//        CriteriaQuery<Product> cq = cb.createQuery(Product.class);
//        Root<Product> root = cq.from(Product.class);
//        cq.select(root);
//        Query query = session.createQuery(cq);
//        return query.getResultList();
//    }

    @Override
    public List<Product> findAll() {
        Criteria criteria = createEntityCriteria();
        return (List<Product>) criteria.list();  
    }

    @Override
    public Object findById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean save(Object entity) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean update(Object entity) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
