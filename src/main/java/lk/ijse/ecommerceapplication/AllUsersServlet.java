package lk.ijse.ecommerceapplication;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommerceapplication.BO.BOFactory;
import lk.ijse.ecommerceapplication.BO.custom.UserBO;
import lk.ijse.ecommerceapplication.Entity.User;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "AllUsersServlet", value = "/all-users-servlet")
public class AllUsersServlet extends HttpServlet {
    UserBO userBO = (UserBO) BOFactory.getBoFactory().getBO(BOFactory.BOTypes.USER);
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<User> userList = userBO.getAll();
        if (userList != null && !userList.isEmpty()){
            req.setAttribute("userList",userList);
        } else {
            req.setAttribute("userListFail","No Users Found");
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("adminUserActivation.jsp");
        requestDispatcher.forward(req,resp);
    }
}
