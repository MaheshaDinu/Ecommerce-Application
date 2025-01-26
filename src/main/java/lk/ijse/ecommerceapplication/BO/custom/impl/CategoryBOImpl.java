package lk.ijse.ecommerceapplication.BO.custom.impl;

import lk.ijse.ecommerceapplication.BO.custom.CategoryBO;
import lk.ijse.ecommerceapplication.DAO.DAOFactory;
import lk.ijse.ecommerceapplication.DAO.custom.CategoryDAO;
import lk.ijse.ecommerceapplication.Entity.Category;

import java.util.List;

public class CategoryBOImpl implements CategoryBO {
    CategoryDAO categoryDAO = (CategoryDAO) DAOFactory.getDaoFactory().getDAO(DAOFactory.DAOTypes.CATEGORY);
    @Override
    public boolean save(Category category) {
        return categoryDAO.save(category);
    }

    @Override
    public List<Category> getAll() {
        return categoryDAO.getAll();
    }

    @Override
    public Category getById(String id) {
        return categoryDAO.findById(id);
    }

    @Override
    public boolean update(Category category) {
        return categoryDAO.update(category);
    }

    @Override
    public boolean delete(String id) {
        return categoryDAO.delete(id);
    }
}
