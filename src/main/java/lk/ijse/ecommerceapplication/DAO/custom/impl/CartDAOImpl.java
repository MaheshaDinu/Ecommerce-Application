package lk.ijse.ecommerceapplication.DAO.custom.impl;

import lk.ijse.ecommerceapplication.DAO.custom.CartDAO;
import lk.ijse.ecommerceapplication.Entity.Cart;
import lk.ijse.ecommerceapplication.config.SessionFactoryConfig;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class CartDAOImpl implements CartDAO {
    @Override
    public List<Cart> getAll() {
        return null;
    }

    @Override
    public void save(Cart cart) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Transaction transaction = session.beginTransaction();
            session.persist(cart);
            transaction.commit();
        }

    }

    @Override
    public Cart findById(String id) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            return session.get(Cart.class, id);
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }

    }

    @Override
    public void update(Cart cart) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Transaction transaction = session.beginTransaction();
            session.merge(cart);
            transaction.commit();
        }
    }

    @Override
    public void delete(String id) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Transaction transaction = session.beginTransaction();
            Cart cart = session.get(Cart.class, id);
            if (cart != null) {
                session.remove(cart);
            }
            transaction.commit();
        }
    }
}
