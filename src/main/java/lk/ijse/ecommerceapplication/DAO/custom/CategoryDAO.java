package lk.ijse.ecommerceapplication.DAO.custom;

import lk.ijse.ecommerceapplication.DAO.CrudDAO;
import lk.ijse.ecommerceapplication.Entity.Category;

import java.util.List;

public interface CategoryDAO extends CrudDAO<Category , String> {
    // Create a new category
    boolean save(Category category);

    // Retrieve a category by its ID
    Category findById(String id);

    // Retrieve all categories
    List<Category> getAll();

    // Update an existing category
    void update(Category category);

    // Delete a category by its ID
    void delete(String id);

    // Find categories by name (optional, if needed)
    Category findByName(String name);
}
