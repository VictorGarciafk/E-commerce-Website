package com.ecommerce.ecommerce_project.Entity;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Set;

@Entity
@Data
@Table(name = "product_category")
public class productCategory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_category")
    private int id;

    @Column(name = "category_Name")
    private String CategoryName;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "category")
    private Set<product> products;
}
