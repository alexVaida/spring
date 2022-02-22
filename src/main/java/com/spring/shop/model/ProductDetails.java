package com.spring.shop.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.util.List;


@Setter
@Getter
@AllArgsConstructor
public class ProductDetails {

    String name;
    int pret;
    ProductDisponibility disponibility;
    boolean flag;
    String description;
    List<String> poze;


}