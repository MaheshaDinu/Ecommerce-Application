package lk.ijse.ecommerceapplication.BO.custom.impl;

import lk.ijse.ecommerceapplication.BO.custom.ProductBO;
import lk.ijse.ecommerceapplication.DAO.DAOFactory;
import lk.ijse.ecommerceapplication.DAO.custom.ProductDAO;
import lk.ijse.ecommerceapplication.Entity.Product;

import java.util.List;

public class ProductBOImpl implements ProductBO {
    ProductDAO productDAO = (ProductDAO) DAOFactory.getDaoFactory().getDAO(DAOFactory.DAOTypes.PRODUCT);
    @Override
    public boolean save(Product product) {
        return productDAO.save(product);
    }

    @Override
    public List<Product> getAll() {
        return productDAO.getAll();
    }

    @Override
    public boolean update(Product product) {
        return productDAO.update(product);
    }

    @Override
    public Product findById(String id) {
        return productDAO.findById(id);
    }

    @Override
    public boolean delete(String id) {
        return productDAO.delete(id);
    }
}
