package com.app.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.model.Product;
import com.app.repo.ProductRepository;
import com.app.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService  {
	@Autowired
	private ProductRepository repo;

	@Override
	public void saveProduct(Product p) {
		repo.save(p);
		
	}
	@Override
	public void deleteProduct(Integer id) {
		repo.deleteById(id);
		
	}



	@Override
	@Transactional(readOnly=true)
	public List<Product> getAllProducts() {
		return repo.findAll();
	}
	
	@Override
	@Transactional(readOnly=true)
	public Product getProductById(Integer id) {
		return repo.getOne(id);
	}

}
