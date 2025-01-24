package lk.ijse.ecommerceapplication.BO.custom;

import lk.ijse.ecommerceapplication.BO.SuperBO;
import lk.ijse.ecommerceapplication.Entity.Category;

import java.util.List;

public interface CategoryBO extends SuperBO {
    boolean save(Category category);

    List<Category> getAll();
}
