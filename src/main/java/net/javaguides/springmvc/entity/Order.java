//package net.javaguides.springmvc.entity;
//
//import java.util.Date;
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.Table;
//
//@Entity
//@Table(name = "orders")
//public class Order {
//
//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    @Column(name = "id")
//    private int id;
//
//    @Column(name = "user_id")
//    private String userId;
//    
//    @Column(name = "product_id")
//    private String productId;
//
//    @Column(name = "product_id")
//    private Date purchase_date;
//     
//    public Order() {
//    }
//
//    public int getId() {
//        return id;
//    }
//
//    public void setId(int id) {
//        this.id = id;
//    }
//
//    public String getUserId() {
//        return userId;
//    }
//
//    public void setUserId(String userId) {
//        this.userId = userId;
//    }
//
//    public String getProductId() {
//        return productId;
//    }
//
//    public void setProductId(String productId) {
//        this.productId = productId;
//    }
//
//    public Date getPurchase_date() {
//        return purchase_date;
//    }
//
//    public void setPurchase_date(Date purchase_date) {
//        this.purchase_date = purchase_date;
//    }
//
//    @Override
//    public String toString() {
//        return "Order{" + "id=" + id + ", userId=" + userId + ", productId=" + productId + ", purchase_date=" + purchase_date + '}';
//    }   
//
//}
