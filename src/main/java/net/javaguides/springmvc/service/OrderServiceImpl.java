///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package net.javaguides.springmvc.service;
//
//import java.util.List;
//import net.javaguides.springmvc.dao.IOrderDao;
//import net.javaguides.springmvc.entity.Order;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
///**
// *
// * @author ticho
// */
//@Service
//public class OrderServiceImpl implements IOrderService {
//     @Autowired
//	private IOrderDao orderDAO;
//        
//     @Override
//    @Transactional
//    public List<Order> getOrders() {
//        return orderDAO.getOrders();
//    }
//
//    @Override
//    public void saveOrder(Order theOrder) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//    }
//
//    @Override
//    public Order getOrder(int theId) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//    }
//
//    @Override
//    public void deleteOrder(int theId) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//    }
//    
//}
