package com.ecommerce.ecommerce_project.Entity;

import jakarta.persistence.*;
import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.util.Date;

//Establecemos a esta clase como una Entidad
@Entity
//utilizaremos la tabla "product" de nuestra base de datos
@Table(name = "product")
//generamos los getters y setters
@Data
public class product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_product")
    private int id;

    @ManyToOne
    @JoinColumn(name = "category_id", nullable = false)
    private productCategory category;

    @Column(name = "name")
    private String name;

    @Column(name = "sku")
    private String sku;

    @Column(name = "description")
    private String description;

    @Column(name = "price")
    private double Price;

    @Column(name = "status")
    private boolean active;

    @Column(name = "stock")
    private int stock;

    @Column(name = "image_url")
    private String imageUrl;

    @Column(name = "date_created")
    @CreationTimestamp
    private Date dateCreated;

    @Column(name = "last_update")
    @UpdateTimestamp
    private Date dateUpdated;
}
