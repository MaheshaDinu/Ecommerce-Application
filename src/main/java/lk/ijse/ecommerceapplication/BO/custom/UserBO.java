package lk.ijse.ecommerceapplication.BO.custom;

import lk.ijse.ecommerceapplication.BO.SuperBO;
import lk.ijse.ecommerceapplication.Entity.User;

import java.util.List;

public interface UserBO extends SuperBO {
    boolean saveUser(User user);
    User findByUserName(String userName);

    List<User> getAll();
    boolean updateStatus(String id, boolean status);
}
