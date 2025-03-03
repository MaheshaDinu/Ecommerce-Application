package lk.ijse.ecommerceapplication;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
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

@WebServlet(name = "GetCategoriesServlet", value = "/get-categories-servlet")
public class GetCategoriesServlet extends HttpServlet {
    CategoryBO categoryBO = (CategoryBO) BOFactory.getBoFactory().getBO(BOFactory.BOTypes.CATEGORY);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            List<Category> categoryList = categoryBO.getAll();

            Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
            String json = gson.toJson(categoryList);

            resp.setContentType("application/json");
            resp.getWriter().write(json);
        }catch (Exception e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Unable to fetch categories.");
        }

    }
}
