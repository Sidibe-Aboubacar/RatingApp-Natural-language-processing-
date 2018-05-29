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
public interface ProbabilityDAO {

    boolean insertProbability(Probability probability);

    float getProbability(int productId);

}
