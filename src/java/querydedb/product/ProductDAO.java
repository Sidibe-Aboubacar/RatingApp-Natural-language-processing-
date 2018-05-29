/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package querydedb.product;

import groupe.Customer;
import groupe.Product;
import java.util.List;

/**
 *
 * @author macbookpro
 */
public interface ProductDAO
{
    
    List<Product> getAllProducts();

    boolean insertProduct(Product product );
    
   int getProductId(String productname);
   
   
    
}
