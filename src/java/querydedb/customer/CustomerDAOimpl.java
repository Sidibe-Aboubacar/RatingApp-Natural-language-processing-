/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package querydedb.customer;

import groupe.Customer;
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
public class CustomerDAOimpl implements CustomerDAO{

    @Override
    public List<Customer> getAllCustomers() {
       
        try (Connection connection = ConnectionFactory.getConnection();
                Statement stm = connection.createStatement();
                ResultSet rs = stm.executeQuery("SELECT * FROM customer")) {
            
            List<Customer> customers = new ArrayList<>();
            if (rs.next()) {
                
                Customer c = new Customer();
                c.setCustno(rs.getInt("custno"));
                c.setName(rs.getString("name"));
                customers.add(c);
                
                
                
               
                
            }
            return customers;
        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CustomerDAOimpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public boolean insertCustomer(Customer customer) {
        try (Connection connection = ConnectionFactory.getConnection();
                PreparedStatement pstm = connection.prepareStatement("INSERT INTO customer(" + "custno,name)" + "VALUES (?,?)")) {
            pstm.setInt(1,customer.getCustno());
            pstm.setString(2, customer.getName());
           

            int i = pstm.executeUpdate();
            if (i == 1) {
                return true;
            }

        } catch (SQLException ex) {
            ex.printStackTrace();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CustomerDAOimpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public boolean getCustomer(int custno) {
        try (Connection connection = ConnectionFactory.getConnection();
                PreparedStatement pstm =  connection.prepareStatement("SELECT custno FROM customer WHERE custno=?" )) {
              pstm.setInt(1, custno);
            ResultSet rs=  pstm.executeQuery();
            
            if (rs.next()) {
                
                return true;
                
              }
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CustomerDAOimpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    

    
    
}
