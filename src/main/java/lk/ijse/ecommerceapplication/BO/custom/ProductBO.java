package lk.ijse.ecommerceapplication.BO.custom;

import lk.ijse.ecommerceapplication.BO.SuperBO;
import lk.ijse.ecommerceapplication.Entity.Product;

public interface ProductBO extends SuperBO {
    boolean save(Product product);
}
