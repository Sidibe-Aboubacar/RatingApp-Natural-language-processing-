/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package probability;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import querydedb.ConnectionFactory;

/**
 *
 * @author macbookpro
 */
public class ProbabilityDAOimpl implements ProbabilityDAO {

    @Override
    public boolean insertProbability(Probability probability) {

        try (Connection connection = ConnectionFactory.getConnection();
                PreparedStatement pstm = connection.prepareStatement("INSERT INTO probability(" + "product_id)" + "VALUES (?)")) {
            pstm.setInt(1, probability.getProductId());

            int i = pstm.executeUpdate();
            if (i == 1) {
                return true;
            }

        } catch (SQLException ex) {
            ex.printStackTrace();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProbabilityDAOimpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }

    @Override
    public float getProbability(int productId) {
        try (Connection connection = ConnectionFactory.getConnection();
                PreparedStatement p = connection.prepareStatement("select COUNT(*) AS count from probability where product_id=?");
                PreparedStatement pstm = connection.prepareStatement("select COUNT(*) AS total from probability")) {

            p.setInt(1, productId);

            ResultSet rs1 = p.executeQuery();

            int count = 0;
            int total = 0;
            
            if (rs1.next()) {
                count = rs1.getInt("count");
            }

            ResultSet rs = pstm.executeQuery();

            if (rs.next()) {
                total = rs.getInt("total");
            }

            float propabily = ((float) count / total);
            return propabily;

        } catch (SQLException ex) {
            ex.printStackTrace();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProbabilityDAOimpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;

    }

}
