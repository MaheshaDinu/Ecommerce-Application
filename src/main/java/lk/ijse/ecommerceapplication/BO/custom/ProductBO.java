package lk.ijse.ecommerceapplication.BO.custom;

import lk.ijse.ecommerceapplication.BO.SuperBO;
import lk.ijse.ecommerceapplication.Entity.Product;

import java.util.List;

public interface ProductBO extends SuperBO {
    boolean save(Product product);
    List<Product> getAll();
    boolean update(Product product);
    Product findById(String id);
    boolean delete(String id);
}
