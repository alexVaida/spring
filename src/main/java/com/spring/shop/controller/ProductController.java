package com.spring.shop.controller;

import com.spring.shop.model.Product;
import com.spring.shop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

public class ProductController {

    @Autowired
    ProductService productService;


    @GetMapping(path="/products")
    public List<Product> getProducts(){
        return productService.getProducts();
    }
}
