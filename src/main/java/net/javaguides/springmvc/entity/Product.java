/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.javaguides.springmvc.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author ticho
 */
 @Entity
@Table(name="products")
public class Product {
   


	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="title")
	private String title;
	
	@Column(name="price")
	private String price;
	
	@Column(name="email")
	private String email;
        
        @Column(name="short_description")
        private String shortDescription;
        
         @Column(name="details")
        private String details;

    public Product() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDascription(String shortDascription) {
        this.shortDescription = shortDascription;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", title=" + title + ", price=" + price + ", email=" + email + ", shortDascription=" + shortDescription + ", details=" + details + '}';
    }
         
         
        
}
