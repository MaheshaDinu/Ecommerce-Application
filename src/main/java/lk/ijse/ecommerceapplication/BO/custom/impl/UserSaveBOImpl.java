package lk.ijse.ecommerceapplication.BO.custom.impl;

import lk.ijse.ecommerceapplication.BO.custom.UserSaveBO;
import lk.ijse.ecommerceapplication.DAO.DAOFactory;
import lk.ijse.ecommerceapplication.DAO.custom.UserDAO;
import lk.ijse.ecommerceapplication.Entity.User;

public class UserSaveBOImpl implements UserSaveBO {

    UserDAO userDAO = (UserDAO) DAOFactory.getDaoFactory().getDAO(DAOFactory.DAOTypes.USER);
    @Override
    public boolean savUser(User user) {
        return userDAO.save(user);
    }
}
