/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package querydedb.product;

import groupe.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import querydedb.ConnectionFactory;

/**
 *
 * @author macbookpro
 */
public class ProductDAOImpl implements ProductDAO {

    @Override
    public List<Product> getAllProducts() {

        try (Connection connection = ConnectionFactory.getConnection();
                Statement stm = connection.createStatement();
                ResultSet rs = stm.executeQuery("SELECT * FROM product")) {

            List<Product> products = new ArrayList<>();
            if (rs.next()) {

                Product p = new Product();
                p.setProductId(rs.getInt("product_id"));
                p.setProductType(rs.getString("product_type"));
                products.add(p);

            }
            return products;
        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProductDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public boolean insertProduct(Product product) {
        try (Connection connection = ConnectionFactory.getConnection();
                PreparedStatement pstm = connection.prepareStatement("INSERT INTO product(" + "product_id,product_type)" + "VALUES (?,?)")) {
            pstm.setInt(1, product.getProductId());
            pstm.setString(2,product.getProductType());

            int i = pstm.executeUpdate();
            if (i == 1) {
                return true;
            }

        } catch (SQLException ex) {
            ex.printStackTrace();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProductDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    
    @Override
  public int  getProductId(String product)
    {
        try (Connection connection = ConnectionFactory.getConnection();
                PreparedStatement pstm =  connection.prepareStatement("SELECT product_id FROM product WHERE product_type=?" )) {
              pstm.setString(1, product);
            ResultSet rs=  pstm.executeQuery();
            if (rs.next()) {
                
               return rs.getInt("product_id");
              
                
            }
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProductDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
        
        
    }

}
