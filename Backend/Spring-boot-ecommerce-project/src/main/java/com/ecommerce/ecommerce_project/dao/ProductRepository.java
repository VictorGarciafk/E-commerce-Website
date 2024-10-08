package com.ecommerce.ecommerce_project.dao;

import com.ecommerce.ecommerce_project.Entity.product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("http://localhost:4200")
public interface ProductRepository extends JpaRepository<product, Long> {

}
