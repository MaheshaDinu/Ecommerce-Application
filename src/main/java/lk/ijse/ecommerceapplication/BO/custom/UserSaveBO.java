package lk.ijse.ecommerceapplication.BO.custom;

import lk.ijse.ecommerceapplication.BO.SuperBO;
import lk.ijse.ecommerceapplication.Entity.User;

public interface UserSaveBO extends SuperBO {
    boolean savUser(User user);
}
