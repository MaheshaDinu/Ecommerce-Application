package lk.ijse.ecommerceapplication.BO;

import lk.ijse.ecommerceapplication.BO.custom.impl.CategoryBOImpl;
import lk.ijse.ecommerceapplication.BO.custom.impl.UserBOImpl;

public class BOFactory {
    private static BOFactory boFactory;
    private BOFactory(){}

    public static BOFactory getBoFactory(){return (boFactory==null)?boFactory=new BOFactory():boFactory;}

    public enum BOTypes{
        USER, CATEGORY
    }
    public SuperBO getBO(BOTypes types){
        switch (types){
            case USER:
                return new UserBOImpl();
            case CATEGORY:
                return new CategoryBOImpl();
            default:
                return null;
        }
    }
}
