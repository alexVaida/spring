package com.spring.shop.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@AllArgsConstructor
public class Product {

    String name;
    int pret;
    String shortDescription;
    ProductDisponibility disponibility;
    boolean flag;
}