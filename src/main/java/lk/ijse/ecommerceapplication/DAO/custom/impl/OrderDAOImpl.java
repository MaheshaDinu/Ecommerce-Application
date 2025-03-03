package lk.ijse.ecommerceapplication.DAO.custom.impl;

import lk.ijse.ecommerceapplication.DAO.custom.OrderDAO;
import lk.ijse.ecommerceapplication.Entity.Order;
import lk.ijse.ecommerceapplication.Entity.Product;
import lk.ijse.ecommerceapplication.config.SessionFactoryConfig;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class OrderDAOImpl implements OrderDAO {
    @Override
    public boolean save(Order order) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Transaction transaction = session.beginTransaction();
            session.persist(order);
            transaction.commit();
            return true;
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public Order findById(String id) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            return session.get(Order.class, id);
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }

    }

    @Override
    public List<Order> getAll() {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Query<Order> query = session.createQuery("FROM Order ", Order.class);
            return query.list();
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public boolean update(Order order) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Transaction transaction = session.beginTransaction();
            session.merge(order);
            transaction.commit();
            return true;
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean delete(String id) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Transaction transaction = session.beginTransaction();
            Order order = session.get(Order.class, id);
            if (order != null) {
                session.remove(order);
                return true;
            }
            transaction.commit();
            return false;
        }
    }

    @Override
    public List<Order> findByCustomer(String customerId) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Query<Order> query = session.createQuery("FROM Order WHERE user.id = :userId", Order.class);
            query.setParameter("userId", customerId);
            return query.list();
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }

    }
}
