package lk.ijse.ecommerceapplication;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommerceapplication.BO.BOFactory;
import lk.ijse.ecommerceapplication.BO.custom.CategoryBO;
import lk.ijse.ecommerceapplication.BO.custom.ProductBO;
import lk.ijse.ecommerceapplication.Entity.Category;
import lk.ijse.ecommerceapplication.Entity.Product;

import java.io.IOException;

@WebServlet(name = "UpdateProductServlet", value = "/update-product-servlet")
public class UpdateProductServlet extends HttpServlet {

    CategoryBO categoryBO = (CategoryBO) BOFactory.getBoFactory().getBO(BOFactory.BOTypes.CATEGORY);
    ProductBO productBO = (ProductBO) BOFactory.getBoFactory().getBO(BOFactory.BOTypes.PRODUCT);
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String editCategoryId = req.getParameter("editCategory");
        String productName = req.getParameter("editProductName");
        String description = req.getParameter("editDescription");
        Double price = Double.valueOf(req.getParameter("editPrice"));
        int stock = Integer.parseInt(req.getParameter("editStock"));
        String editProductId = req.getParameter("editProductId");

        Category category = categoryBO.getById(editCategoryId);
        Product product = productBO.findById(editProductId);
        product.setName(productName);
        product.setDescription(description);
        product.setPrice(price);
        product.setStockQuantity(stock);
        product.setCategory(category);

        boolean isUpdated = productBO.update(product);

        if (isUpdated){
            resp.sendRedirect(req.getContextPath() + "/all-product-admin-servlet?saveSuccess=Product Updated Successfully!");
        } else {
            resp.sendRedirect(req.getContextPath() + "/all-product-admin-servlet?saveFail=Product update Failed!");
        }
    }
}
