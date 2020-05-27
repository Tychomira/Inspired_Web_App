
package net.javaguides.springmvc.dao;

import java.util.List;


public interface IObjectDao<T> {
    
    public List<T> findAll();
    public Object findById(int id);
    public boolean save(T entity);
    public boolean delete(int id);
    public boolean update(T entity);
}
