package com.ecommerce.ecommerce_project.config;

import com.ecommerce.ecommerce_project.Entity.product;
import com.ecommerce.ecommerce_project.Entity.productCategory;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.rest.core.config.RepositoryRestConfiguration;
import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurer;
import org.springframework.http.HttpMethod;
import org.springframework.web.servlet.config.annotation.CorsRegistry;

@Configuration
public class MyDataRestConfig implements RepositoryRestConfigurer {

    public void configureRepositoryRestConfiguration(RepositoryRestConfiguration config, CorsRegistry cors) {

        //Metemos a una matris las acciones POST, PUT y DELETE
        HttpMethod[] disableActions = {HttpMethod.POST, HttpMethod.PUT, HttpMethod.DELETE};



        //desabilitar acciones POST, PUT y Delete, para que unicamente sea solo lectura.
        //para productos
        config.getExposureConfiguration()
                .forDomainType(product.class)
                .withItemExposure((metdata, httpMethods) -> httpMethods.disable(disableActions))
                .withCollectionExposure((metdata, httpMethods) -> httpMethods.disable(disableActions));

        //para catalogo
        config.getExposureConfiguration()
                .forDomainType(productCategory.class)
                .withItemExposure((metdata, httpMethods) -> httpMethods.disable(disableActions))
                .withCollectionExposure((metdata, httpMethods) -> httpMethods.disable(disableActions));
    }
}
