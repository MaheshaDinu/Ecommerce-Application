package lk.ijse.ecommerceapplication;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommerceapplication.BO.BOFactory;
import lk.ijse.ecommerceapplication.BO.custom.ProductBO;

import java.io.IOException;

@WebServlet(name = "DeleteProductServlet", value = "/delete-product-servlet")
public class DeleteProductServlet extends HttpServlet {
    ProductBO productBO = (ProductBO) BOFactory.getBoFactory().getBO(BOFactory.BOTypes.PRODUCT);
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String productId = req.getParameter("productId");

        boolean isDeleted = productBO.delete(productId);

        if (isDeleted){
            resp.sendRedirect(req.getContextPath() + "/all-product-admin-servlet?saveSuccess=Product Deleted Successfully!");
        } else {
            resp.sendRedirect(req.getContextPath() + "/all-product-admin-servlet?saveFail=Product Delete Failed!");
        }
    }
}
