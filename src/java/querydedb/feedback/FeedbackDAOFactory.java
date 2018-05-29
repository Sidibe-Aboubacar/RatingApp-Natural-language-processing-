/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package querydedb.feedback;

/**
 *
 * @author macbookpro
 */
public class FeedbackDAOFactory {
    
   
    public static FeedbackDAO createFeedback()
    {
        return new FeedbackDAOImpl();
    }
    



    
}
