package lk.ijse.ecommerceapplication.DAO.custom;

import lk.ijse.ecommerceapplication.DAO.CrudDAO;
import lk.ijse.ecommerceapplication.Entity.Order;

import java.util.List;

public interface OrderDAO extends CrudDAO<Order,String> {
    boolean save(Order order);

    Order findById(String id);

    List<Order> getAll();

    boolean update(Order order);

    boolean delete(String id);

    List<Order> findByCustomer(String customerId);
}
