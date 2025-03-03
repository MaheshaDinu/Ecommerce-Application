package lk.ijse.ecommerceapplication.DAO.custom.impl;

import lk.ijse.ecommerceapplication.DAO.custom.OrderDetailDAO;
import lk.ijse.ecommerceapplication.Entity.OrderDetail;
import lk.ijse.ecommerceapplication.config.SessionFactoryConfig;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class OrderDetailDAOImpl implements OrderDetailDAO {
    @Override
    public boolean update(OrderDetail entity) {
        return false;
    }

    @Override
    public OrderDetail findById(String s) {
        return null;
    }

    @Override
    public List<OrderDetail> getAll() {
        return null;
    }

    @Override
    public boolean save(OrderDetail orderDetail) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Transaction transaction = session.beginTransaction();
            session.persist(orderDetail);
            transaction.commit();
            return true;
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public List<OrderDetail> findByOrderId(String orderId) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Query<OrderDetail> query = session.createQuery("FROM OrderDetail WHERE order.id = :orderId", OrderDetail.class);
            query.setParameter("orderId", orderId);
            return query.list();
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }

    }

    @Override
    public boolean delete(String id) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Transaction transaction = session.beginTransaction();
            OrderDetail orderDetail = session.get(OrderDetail.class, id);
            if (orderDetail != null) {
                session.remove(orderDetail);
                return true;
            }
            transaction.commit();
            return false;
        }
    }
}
