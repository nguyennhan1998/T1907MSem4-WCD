package com.example.model;

import com.example.da.ProductDataAccess;
import com.example.entity.Product;

import java.sql.SQLException;
import java.util.List;

public class ProductFinderBean {
    private  String keyword;
    public void setKeyword(String keyword){
        this.keyword = keyword;
    }
    public List<Product> getAllProducts() throws SQLException, ClassNotFoundException {
        //ProductDataAccess productDataAccess = new ProductDataAccess();
        //productDataAccess.getProductsByName("nokia");
        return new ProductDataAccess().getProductsByName(keyword);
    }
}
