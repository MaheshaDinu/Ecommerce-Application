package lk.ijse.ecommerceapplication;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import lk.ijse.ecommerceapplication.BO.BOFactory;
import lk.ijse.ecommerceapplication.BO.custom.CategoryBO;
import lk.ijse.ecommerceapplication.BO.custom.ProductBO;
import lk.ijse.ecommerceapplication.Entity.Category;
import lk.ijse.ecommerceapplication.Entity.Product;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

@WebServlet(name = "AddProductServlet", value = "/add-product-servlet")
@MultipartConfig
public class AddProductServlet extends HttpServlet {
    CategoryBO categoryBO = (CategoryBO) BOFactory.getBoFactory().getBO(BOFactory.BOTypes.CATEGORY);
    ProductBO productBO = (ProductBO) BOFactory.getBoFactory().getBO(BOFactory.BOTypes.PRODUCT);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Add servlet post method");
        String categoryId = req.getParameter("categoryId");
        String productName = req.getParameter("productName");
        String description = req.getParameter("description");
        Double price = Double.parseDouble(req.getParameter("price"));
        int stock = Integer.parseInt(req.getParameter("stock"));

        Part productImage = req.getPart("productImage");

        // Save images to `src/main/Assets/Images/uploads`
        String uploadDir = "F:\\EcommerceAppUploads\\Assets\\Images\\uploads";
        File uploadDirFile = new File(uploadDir);
        if (!uploadDirFile.exists()) {
            uploadDirFile.mkdirs(); // Create the directory if it doesn't exist
        }

        // Get the submitted file name
        String fileName = Paths.get(productImage.getSubmittedFileName()).getFileName().toString();
        File file = new File(uploadDirFile, fileName);

        // Write the uploaded file to the target directory
        try {
            productImage.write(file.getAbsolutePath());
            System.out.println("Image saved to: " + file.getAbsolutePath());
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Failed to save image: " + e.getMessage());
        }

        // Relative path to store in the database
        String imageURL = "Assets/Images/uploads/" + fileName;
        System.out.println(imageURL);

        // Fetch category by ID
        Category category = categoryBO.getById(categoryId);

        // Create a Product object and set its attributes
        Product product = new Product();
        product.setName(productName);
        product.setDescription(description);
        product.setPrice(price);
        product.setStockQuantity(stock);
        product.setImageUrl(imageURL); // Save the relative path in the database
        product.setCategory(category);

        // Save the product using the ProductBO
        boolean isSaved = productBO.save(product);
        System.out.println(isSaved);

        // Redirect based on success or failure
        if (isSaved) {
            resp.sendRedirect(req.getContextPath() + "/all-product-admin-servlet?saveSuccess=Product Saved Successfully!");
        } else {
            resp.sendRedirect(req.getContextPath() + "/all-product-admin-servlet?saveFail=Product Save Failed!");
        }
    }
}
