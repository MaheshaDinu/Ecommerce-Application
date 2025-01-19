package lk.ijse.ecommerceapplication.DAO.custom;

import lk.ijse.ecommerceapplication.DAO.CrudDAO;
import lk.ijse.ecommerceapplication.Entity.Cart;

public interface CartDAO extends CrudDAO<Cart,String> {
    void save(Cart cart);

    Cart findById(String id);

    void update(Cart cart);

    void delete(String id);
}
