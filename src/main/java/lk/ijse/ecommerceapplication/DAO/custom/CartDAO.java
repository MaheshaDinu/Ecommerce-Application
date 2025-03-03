package lk.ijse.ecommerceapplication.DAO.custom;

import lk.ijse.ecommerceapplication.DAO.CrudDAO;
import lk.ijse.ecommerceapplication.Entity.Cart;

public interface CartDAO extends CrudDAO<Cart,String> {
    boolean save(Cart cart);

    Cart findById(String id);

    boolean update(Cart cart);

    boolean delete(String id);
}
