package lk.ijse.ecommerceapplication;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommerceapplication.BO.BOFactory;
import lk.ijse.ecommerceapplication.BO.custom.UserBO;
import lk.ijse.ecommerceapplication.Entity.User;

import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login-servlet")
public class LoginServlet extends HttpServlet {
    UserBO userBO = (UserBO) BOFactory.getBoFactory().getBO(BOFactory.BOTypes.USER);
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("Username");
        String password = req.getParameter("Password");

        User user = userBO.findByUserName(username);
        if (user!=null){
            if (password.equals(user.getPassword())){
                if (user.getRole()== User.Role.ADMIN){
                    resp.sendRedirect(req.getContextPath()+"/pages/adminProductManagement.jsp");
                } else {
                    resp.sendRedirect(req.getContextPath()+"/pages/customerProductPage.jsp");
                }
            } else {
                req.getSession().setAttribute("error","Password is incorrect!");
                resp.sendRedirect("login.jsp?");
            }
        } else {
            req.getSession().setAttribute("error","User Name is does not Exist!");
            resp.sendRedirect("login.jsp?");
        }

    }
}
