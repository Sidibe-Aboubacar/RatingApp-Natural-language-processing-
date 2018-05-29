/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package querydedb.customer;

import groupe.Customer;
import java.util.List;

/**
 *
 * @author macbookpro
 */
public interface CustomerDAO
        
{
    
    List<Customer> getAllCustomers();

    boolean insertCustomer(Customer customer);

    boolean getCustomer(int custno);

    //boolean updateCustomer(Customer customer);

    
}
