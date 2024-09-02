package com.ecommerce.ecommerce_project.dao;

import com.ecommerce.ecommerce_project.Entity.productCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("http://localhost:4200")
@RepositoryRestResource(collectionResourceRel = "ProductCategory", path = "product-category")
public interface ProductCategoryRepository extends JpaRepository<productCategory, Long> {
}
