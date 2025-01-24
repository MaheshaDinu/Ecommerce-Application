package lk.ijse.ecommerceapplication.DAO.custom;

import lk.ijse.ecommerceapplication.DAO.CrudDAO;
import lk.ijse.ecommerceapplication.Entity.Product;

import java.util.List;

public interface ProductDAO extends CrudDAO<Product,String> {
    boolean save(Product product);

    Product findById(String id);

    List<Product> getAll();

    void update(Product product);

    void delete(String id);

    List<Product> findByName(String name);

    List<Product> findByCategory(String categoryId);
}
