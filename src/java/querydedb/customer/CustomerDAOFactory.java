/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package querydedb.customer;


/**
 *
 * @author macbookpro
 */
public class CustomerDAOFactory {
    
    public static CustomerDAO createCustomer()
    {
        return new CustomerDAOimpl();
    }
    
}   
