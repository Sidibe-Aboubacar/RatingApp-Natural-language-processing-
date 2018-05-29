/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package server;

import groupe.Customer;
import groupe.Feedback;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import probability.Probability;
import probability.ProbabilityDAO;
import probability.ProbabilityDAOFactory;
import querydedb.customer.CustomerDAO;
import querydedb.customer.CustomerDAOFactory;
import querydedb.feedback.FeedbackDAO;
import querydedb.feedback.FeedbackDAOFactory;
import querydedb.product.ProductDAO;
import querydedb.product.ProductDAOFactory;

/**
 *
 * @author macbookpro
 */
@WebServlet(name = "CustomerServer", urlPatterns = {"/CustomerServer"})
public class CustomerServer extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String name = request.getParameter("name");
        String custNo = request.getParameter("custNo");
        int custno = Integer.parseInt(custNo);
        String product = request.getParameter("product");
        String rate = request.getParameter("rate");
        //String probabilityProduct = request.getParameter("probability");
        //int proId = 0;

        //Check if the customer number exist
        CustomerDAO cdao = CustomerDAOFactory.createCustomer();
        while (cdao.getCustomer(custno)) {
            custno = 1 + (int) (Math.random() * ((100 - 1) + 1));
        }

        //create customer
        Customer c = new Customer();
        c.setCustno(custno);
        c.setName(name);

        //get productId
        ProductDAO pdao = ProductDAOFactory.createProduct();
        int productId = pdao.getProductId(product);

        //create feedback
        Feedback f = new Feedback();

        f.setCustno(custno);
        f.setProductId(productId);
        f.setRating(rate);

        //insert feedback
        FeedbackDAO fdao = FeedbackDAOFactory.createFeedback();

        //probability
        /*switch (probabilityProduct) {
            case "iPhone":
                proId = 112233;
                break;
            case "Samsung":
                proId = 223344;
                break;
            case "LG":
                proId = 334455;
                break;
            default:
                proId = 4455666;
                break;
        }*/

        //Probability probability = new Probability();
        //probability.setProductId(proId);

        //ProbabilityDAO probabilitydao = ProbabilityDAOFactory.createProbability();

        if (cdao.insertCustomer(c) && fdao.insertFeedback(f)) {
            request.setAttribute("message", "insert successfull");
            request.getRequestDispatcher("Rating.jsp").forward(request, response);
        } else {
            request.setAttribute("message", "insert failed");
            request.getRequestDispatcher("Error.jsp").forward(request, response);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
