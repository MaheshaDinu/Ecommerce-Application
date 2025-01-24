package lk.ijse.ecommerceapplication.BO.custom;

import lk.ijse.ecommerceapplication.BO.SuperBO;
import lk.ijse.ecommerceapplication.Entity.User;

public interface UserBO extends SuperBO {
    boolean saveUser(User user);
    User findByUserName(String userName);
}
