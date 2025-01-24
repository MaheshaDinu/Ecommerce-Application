package lk.ijse.ecommerceapplication.DAO.custom;

import lk.ijse.ecommerceapplication.DAO.CrudDAO;
import lk.ijse.ecommerceapplication.Entity.OrderDetail;

import java.util.List;

public interface OrderDetailDAO extends CrudDAO<OrderDetail, String> {
    boolean save(OrderDetail orderDetail);

    List<OrderDetail> findByOrderId(String orderId);

    void delete(String id);
}
