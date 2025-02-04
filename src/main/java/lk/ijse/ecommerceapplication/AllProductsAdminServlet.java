package lk.ijse.ecommerceapplication;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommerceapplication.BO.BOFactory;
import lk.ijse.ecommerceapplication.BO.custom.ProductBO;
import lk.ijse.ecommerceapplication.Entity.Product;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "AllProductsAdminServlet", value = "/all-product-admin-servlet")
public class AllProductsAdminServlet extends HttpServlet {
    ProductBO productBO = (ProductBO) BOFactory.getBoFactory().getBO(BOFactory.BOTypes.PRODUCT);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> productList = productBO.getAll();
        if (productList != null && !productList.isEmpty()) {
            req.setAttribute("productList", productList);
        } else {
            req.setAttribute("allListFailed", "No Products were found.");
        }

        // Ensure no further processing after forwarding
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("adminProductManagement.jsp");
        requestDispatcher.forward(req, resp);
    }
}

