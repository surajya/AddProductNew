package spring.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import spring.Modal.Product;

@Component
public class ProductDao {
	@Autowired
	private HibernateTemplate hibernatetemplate;
	
	@Transactional
	public void CreateProduct(Product product) {
		this.hibernatetemplate.saveOrUpdate(product);
	}
	
	public List<Product> getAllProduct(){
		List<Product> All_Product = this.hibernatetemplate.loadAll(Product.class);
		return All_Product;
	}
	
	@Transactional
	public void deleteProduct(int pid) {
		Product p = this.hibernatetemplate.get(Product.class, pid);
		this.hibernatetemplate.delete(p);
	}
	
	public Product getProduct(int pid) {
		return this.hibernatetemplate.get(Product.class, pid);
	}
}
