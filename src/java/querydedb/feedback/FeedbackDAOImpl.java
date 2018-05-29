/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package querydedb.feedback;

import groupe.Feedback;
import groupe.Statistic;
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
public class FeedbackDAOImpl implements FeedbackDAO {

    @Override
    public List<Feedback> getAllFeedbacks() {

        try (Connection connection = ConnectionFactory.getConnection();
                Statement stm = connection.createStatement();
                ResultSet rs = stm.executeQuery("SELECT * FROM feedback")) {

            List<Feedback> feedbacks = new ArrayList<>();
            if (rs.next()) {

                Feedback f = new Feedback();
                f.setCustno(rs.getInt("custno"));
                f.setProductId(rs.getInt("product_id"));
                f.setRating(rs.getString("rating"));

                feedbacks.add(f);

            }
            return feedbacks;
        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(FeedbackDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

    @Override
    public boolean insertFeedback(Feedback feedback) {

        try (Connection connection = ConnectionFactory.getConnection();
                PreparedStatement pstm = connection.prepareStatement("INSERT INTO feedback(" + "product_id,custno,rating)" + "VALUES (?,?,?)")) {
            pstm.setInt(1, feedback.getProductId());
            pstm.setInt(2, feedback.getCustno());
            pstm.setString(3, feedback.getRating());

            int i = pstm.executeUpdate();
            if (i == 1) {
                return true;
            }

        } catch (SQLException ex) {
            ex.printStackTrace();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(FeedbackDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public float getAverage(int productId) {
        try (Connection connection = ConnectionFactory.getConnection();
                PreparedStatement pstm = connection.prepareStatement("select avg(rating) from feedback where product_id=?")) {

            pstm.setInt(1, productId);

            ResultSet rs = pstm.executeQuery();

            if (rs.next()) {
                return rs.getFloat(1);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(FeedbackDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0.0F;
    }

    @Override
    public int getCount(int productId) {

        try (Connection connection = ConnectionFactory.getConnection();
                PreparedStatement pstm = connection.prepareStatement("select COUNT(*) AS total from feedback where product_id=?")) {

            pstm.setInt(1, productId);

            ResultSet rs = pstm.executeQuery();

            if (rs.next()) {
                return rs.getInt(1);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(FeedbackDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;

    }

    @Override
    public float getEachTypeCountPercentage(int productId, int rating) {

        try (Connection connection = ConnectionFactory.getConnection();
                PreparedStatement p = connection.prepareStatement("select COUNT(*) AS count from feedback where product_id=?");
                
                PreparedStatement pstm = connection.prepareStatement("select COUNT(*) AS per from feedback where product_id=? and rating=?")) {

            p.setInt(1, productId);

            pstm.setInt(1, productId);
            pstm.setInt(2, rating);

            ResultSet rs1 = p.executeQuery();

            int totalCountPerProduct = 0;
            int countEachRating = 0;
            if (rs1.next()) {
                totalCountPerProduct = rs1.getInt("count");
            }
            
            ResultSet rs = pstm.executeQuery();

            if (rs.next()) {
                countEachRating = rs.getInt("per");
            }

            float percen =  ( (float)countEachRating  /totalCountPerProduct ) *100;
         int percentage=   (int)percen;
            return percentage;

        } catch (SQLException ex) {
            ex.printStackTrace();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(FeedbackDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 1;

    }

    
    /*public static List<Statistic> getStatistic() {
        try (Connection connection = ConnectionFactory.getConnection();
               Statement stmt = connection.createStatement();
               ResultSet rs= stmt.executeQuery("select f.product_id, p.product_type, p.product_id, avg(rating) as avg,count(*) as count\n"
                        + "from feedback f , product p where f.product_id = p.product_id group by product_type");
                //PreparedStatement pstm = connection.prepareStatement("select f.product_id, p.product_type, p.product_id, avg(rating) as avg,count(*) as count\n"
                       //+ "from feedback f , product p where f.product_id = p.product_id group by product_type"
                ) {
            
            List<Statistic> stats= new ArrayList<>();

            if (rs.next()) {
                
                Statistic s = new Statistic();
                s.setProductId(rs.getInt("product_id"));
                s.setAvarage(rs.getFloat("avg"));
                s.setCount(rs.getInt("count"));
                stats.add(s);
            }
            return  stats;

        } catch (SQLException ex) {
            ex.printStackTrace();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(FeedbackDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }*/

   

}
