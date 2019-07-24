package com.app.service;

import java.util.List;

import com.app.model.Product;

public interface ProductService {
	public void saveProduct(Product p);
	
	public void deleteProduct(Integer id);
	public List<Product> getAllProducts();
	public Product getProductById(Integer id);
}
