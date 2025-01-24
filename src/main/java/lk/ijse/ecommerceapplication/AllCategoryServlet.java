package lk.ijse.ecommerceapplication;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommerceapplication.BO.BOFactory;
import lk.ijse.ecommerceapplication.BO.custom.CategoryBO;
import lk.ijse.ecommerceapplication.Entity.Category;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "AllCategoryServlet", value = "/all-category-servlet")
public class AllCategoryServlet extends HttpServlet {
    CategoryBO categoryBO = (CategoryBO) BOFactory.getBoFactory().getBO(BOFactory.BOTypes.CATEGORY);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Category> categoryList = categoryBO.getAll();
        if (categoryList != null && !categoryList.isEmpty()) {
            req.setAttribute("categoryList", categoryList);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/pages/adminCategoryManagement.jsp");
            requestDispatcher.forward(req, resp);
        } else {
            resp.sendRedirect("/pages/adminCategoryManagement.jsp?allListFailed=No categories found.");
        }
    }
}

