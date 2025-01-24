package lk.ijse.ecommerceapplication.BO.custom.impl;

import lk.ijse.ecommerceapplication.BO.custom.UserBO;
import lk.ijse.ecommerceapplication.DAO.DAOFactory;
import lk.ijse.ecommerceapplication.DAO.custom.UserDAO;
import lk.ijse.ecommerceapplication.Entity.User;

public class UserBOImpl implements UserBO {

    UserDAO userDAO = (UserDAO) DAOFactory.getDaoFactory().getDAO(DAOFactory.DAOTypes.USER);
    @Override
    public boolean saveUser(User user) {
        return userDAO.save(user);
    }
    @Override
    public User findByUserName(String userName) {
        return userDAO.findByUserName(userName);
    }
}
