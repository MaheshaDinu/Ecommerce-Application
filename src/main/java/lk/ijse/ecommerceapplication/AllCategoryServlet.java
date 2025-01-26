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

@WebServlet(name = "AllCategoryServlet", urlPatterns = {"/all-category-servlet"})
public class AllCategoryServlet extends HttpServlet {
    CategoryBO categoryBO = (CategoryBO) BOFactory.getBoFactory().getBO(BOFactory.BOTypes.CATEGORY);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("AllCategoryServlet doGet called");
        List<Category> categoryList = categoryBO.getAll();
        if (categoryList != null && !categoryList.isEmpty()) {
            req.setAttribute("categoryList", categoryList);
        } else {
            req.setAttribute("allListFailed", "No categories found.");
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("adminCategoryManagement.jsp");
        requestDispatcher.forward(req, resp);
    }
}

