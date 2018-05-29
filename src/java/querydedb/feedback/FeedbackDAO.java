/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package querydedb.feedback;

import groupe.Feedback;
import groupe.Statistic;
import java.util.List;

/**
 *
 * @author macbookpro
 */
public interface FeedbackDAO {

    List<Feedback> getAllFeedbacks();

    boolean insertFeedback(Feedback feedback);

    float getAverage(int productId);

    int getCount(int productId);

    float getEachTypeCountPercentage(int productId, int rating);

     

}
