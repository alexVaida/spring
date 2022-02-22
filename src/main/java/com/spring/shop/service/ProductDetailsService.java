package com.spring.shop.service;

import com.spring.shop.model.ProductDetails;
import com.spring.shop.model.ProductDisponibility;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductDetailsService {

    public List<ProductDetails> getProductDetails(){
        List<String> photos=new ArrayList<>();
        photos.add("https://www.odat.ro/wp-content/uploads/2014/03/poze-cu-masini-sport.jpg");
        photos.add("https://www.mygarage.ro/attachments/auto-moto-velo/484539d1589058315-poze-cu-masina-motocicleta-mea-img_20200508_205813-3.jpg");
        photos.add("https://blog.autovit.ro/wp-content/header/2011/10/P1020751.jpg");
        photos.add("https://www.promotor.ro/wp-content/uploads/2016/11/15963569/5-bmw-x2-001.jpg");
        ProductDetails product = new ProductDetails("BMW", 1000, ProductDisponibility.AVAILABLE,true,"Long description",photos);
        ProductDetails product1 = new ProductDetails("Audi", 10000,ProductDisponibility.AVAILABLE,false,"Long description",photos);
        ProductDetails product2 = new ProductDetails("Dacia", 1002,ProductDisponibility.AVAILABLE,false,"Long description",photos);
        List<ProductDetails> productList=new ArrayList<>();
        productList.add(product);
        productList.add(product1);
        productList.add(product2);
        return productList;
    }
}
