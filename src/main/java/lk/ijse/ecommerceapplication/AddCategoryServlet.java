package lk.ijse.ecommerceapplication;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommerceapplication.BO.BOFactory;
import lk.ijse.ecommerceapplication.BO.custom.CategoryBO;
import lk.ijse.ecommerceapplication.Entity.Category;

import java.io.IOException;

@WebServlet(name = "AddCategoryServlet", value = "/add-category-servlet")
public class AddCategoryServlet extends HttpServlet {
    CategoryBO categoryBO = (CategoryBO) BOFactory.getBoFactory().getBO(BOFactory.BOTypes.CATEGORY);


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String categoryName = req.getParameter("categoryName");
        String categoryDescription = req.getParameter("categoryDescription");

        Category category = new Category();
        category.setName(categoryName);
        category.setDescription(categoryDescription);

        boolean isSaved = categoryBO.save(category);

        if (isSaved) {
            resp.sendRedirect(req.getContextPath() + "/pages/adminCategoryManagement.jsp?saveSuccess=Category Saved Successfully!");
        } else {
            resp.sendRedirect(req.getContextPath() + "/pages/adminCategoryManagement.jsp?saveFail=Category Save Failed!");
        }
    }
}
