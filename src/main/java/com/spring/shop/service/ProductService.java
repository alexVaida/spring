package com.spring.shop.service;

import com.spring.shop.model.Product;
import com.spring.shop.model.ProductDisponibility;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {

    public List<Product> getProducts(){
        Product product = new Product("BMW", 1000,"Combi", ProductDisponibility.AVAILABLE,true);
        Product product1 = new Product("Audi", 10000,"Berlina", ProductDisponibility.AVAILABLE, false);
        Product product2 = new Product("Dacia", 1002,"Decapotabila", ProductDisponibility.AVAILABLE, false);
        List<Product> productList=new ArrayList<>();
        productList.add(product);
        productList.add(product1);
        productList.add(product2);
        return productList;
    }
}
