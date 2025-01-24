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
        if (categoryDAO.save(category)){
            return true;
        } else {
            return false;
        }
    }

    @Override
    public List<Category> getAll() {
        return categoryDAO.getAll();
    }
}
