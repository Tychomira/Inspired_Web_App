package net.javaguides.springmvc.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import net.javaguides.springmvc.entity.User;
import org.hibernate.Criteria;

@Repository
public class UserDaoImpl extends AbstractDao<Integer, User> implements IUserDao {

    @Override
    public List<User> getUsers() {
        Criteria criteria = createEntityCriteria();
        return (List<User>) criteria.list();  
    }

   

}
