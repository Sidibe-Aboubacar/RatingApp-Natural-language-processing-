/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package probability;

/**
 *
 * @author macbookpro
 */
public class ProbabilityDAOFactory {
    
    public static ProbabilityDAO createProbability()
    {
        return new ProbabilityDAOimpl();
    }
    
}
