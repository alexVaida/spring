package com.spring.shop.controller;

import com.spring.shop.model.ProductDetails;
import com.spring.shop.service.ProductDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
public class ProductDetailsController {


    @Autowired
    ProductDetailsService productService;

    @GetMapping(path="/productDetails")
    public ModelAndView getProductDetails(Model model){
        model.addAttribute("message","Hi,Welcome");
        return new ModelAndView("welcome");
    }
}
