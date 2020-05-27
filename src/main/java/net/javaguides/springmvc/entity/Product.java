package net.javaguides.springmvc.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "products")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "title")
    private String title;

    @Column(name = "price")
    private String price;

    @Column(name = "short_description")
    private String shortDescription;

    @Column(name = "details")
    private String details;

    @Column(name = "expire")
    private short expire;

    @Column(name = "duration_in_days")
    private int duration_in_days;

    @Column(name = "image")
    private byte[] image;

    @Column(name = "category_type_id")
    private int category_type_id;

//    @ManyToMany(mappedBy="subjects")
//    private List<Student> students = new ArrayList<Student>();
    
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

    public short isExpire() {
        return expire;
    }

    public void setExpire(short expire) {
        this.expire = expire;
    }

    public int getDuration_in_days() {
        return duration_in_days;
    }

    public void setDuration_in_days(int duration_in_days) {
        this.duration_in_days = duration_in_days;
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    public int getCategory_type_id() {
        return category_type_id;
    }

    public void setCategory_type_id(int category_type_id) {
        this.category_type_id = category_type_id;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", title=" + title + ", price=" + price + ", shortDescription=" + shortDescription + ", details=" + details + ", expire=" + expire + ", duration_in_days=" + duration_in_days + ", image=" + image + ", category_type_id=" + category_type_id + '}';
    }

}
