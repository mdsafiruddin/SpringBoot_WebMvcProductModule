package com.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.model.Product;
import com.app.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	private ProductService service;
	
	@RequestMapping("/show")
	public String ShowPage(Model map) {
		// show backing from
		map.addAttribute("product" ,new Product());
		return "Register";
	} 
	// 2. read the data
	@RequestMapping(value="/save",method=RequestMethod.POST)
    public String saveData(@ModelAttribute Product product, Model map) {
		// call service layer
		 service.saveProduct(product);
		map.addAttribute("message", "Product created!!");
		//clean from baking object
		map.addAttribute("product" ,new Product());
    	return"Register";
    }
	// fetch all row
	@RequestMapping("/all")
	public String getAllData(Model map ,Product product) {
	List<Product> obs=service.getAllProducts();
	map.addAttribute("list",obs);	
	return"Data";
	}
	
	// delete row based on id
	@RequestMapping("/delete")
	public String DeleteData(@RequestParam Integer id,Model map) {
		// call service layer
		service.deleteProduct(id);
		map.addAttribute("msg","data delete'"+id+"'");
	    return "Data";
	}
	// 5.Edit Page
	@RequestMapping("/edit")
	public String EditPage(@RequestParam Integer id,Model map) {
		Product p=service.getProductById(id);
		//from backing
		map.addAttribute("product", p);
		map.addAttribute("Mode", "EDIT");
		return "Register";
	}
}
