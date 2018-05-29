/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package server;

import groupe.Statistic;
import java.io.IOException;
import java.text.DecimalFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import querydedb.feedback.FeedbackDAO;
import querydedb.feedback.FeedbackDAOFactory;

/**
 *
 * @author macbookpro
 */
@WebServlet(name = "Stats", urlPatterns = {"/Stats"})
public class Stats extends HttpServlet {

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

        //List<Statistic> statistics = new ArrayList<>();
        FeedbackDAO fdao = FeedbackDAOFactory.createFeedback();
        //Iphone
        float avg = fdao.getAverage(112233);
        int count = fdao.getCount(112233);
        float fivePer = fdao.getEachTypeCountPercentage(112233, 5);
        float fourPer = fdao.getEachTypeCountPercentage(112233, 4);
        float threePer = fdao.getEachTypeCountPercentage(112233, 3);
        float twoPer = fdao.getEachTypeCountPercentage(112233, 2);
        float onePer = fdao.getEachTypeCountPercentage(112233, 1);
        Statistic Istats = new Statistic();
        Istats.setAvg(avg);
        Istats.setCount(count);
        Istats.setFivePer(fivePer);
        Istats.setFourPer(fourPer);
        Istats.setThreePer(threePer);
        Istats.setTwoPer(twoPer);
        Istats.setOnePer(onePer);
        Istats.setName(Istats.getName(112233));
        //statistics.add(Istats);

        //Samsung
        float avgSam = fdao.getAverage(223344);
        int Samcount = fdao.getCount(223344);
        float fivePerSam = fdao.getEachTypeCountPercentage(223344, 5);
        float fourPerSam = fdao.getEachTypeCountPercentage(223344, 4);
        float threePerSam = fdao.getEachTypeCountPercentage(223344, 3);
        float twoPerSam = fdao.getEachTypeCountPercentage(223344, 2);
        float onePerSam = fdao.getEachTypeCountPercentage(223344, 1);
        Statistic Samstats = new Statistic();
        Samstats.setAvg(avgSam);
        Samstats.setCount(Samcount);
        Samstats.setFivePer(fivePerSam);
        Samstats.setFourPer(fourPerSam);
        Samstats.setThreePer(threePerSam);
        Samstats.setTwoPer(twoPerSam);
        Samstats.setOnePer(onePerSam);
        Samstats.setName(Samstats.getName(223344));
        //statistics.add(Samstats);

        //LG
        float avglg = fdao.getAverage(334455);
        int lgcount = fdao.getCount(334455);
        float fivePerlg = fdao.getEachTypeCountPercentage(334455, 5);
        float fourPerlg = fdao.getEachTypeCountPercentage(334455, 4);
        float threePerlg = fdao.getEachTypeCountPercentage(334455, 3);
        float twoPerlg = fdao.getEachTypeCountPercentage(334455, 2);
        float onePerlg = fdao.getEachTypeCountPercentage(334455, 1);
        Statistic Lgstats = new Statistic();
        Lgstats.setAvg(avglg);
        Lgstats.setCount(lgcount);
        Lgstats.setFivePer(fivePerlg);
        Lgstats.setFourPer(fourPerlg);
        Lgstats.setThreePer(threePerlg);
        Lgstats.setTwoPer(twoPerlg);
        Lgstats.setOnePer(onePerlg);
        Lgstats.setName(Lgstats.getName(334455));
        //statistics.add(Lgstats);

        //SONY
        float avgsony = fdao.getAverage(4455666);
        int sonycount = fdao.getCount(4455666);
        float fivePersony = fdao.getEachTypeCountPercentage(4455666, 5);
        float fourPersony = fdao.getEachTypeCountPercentage(4455666, 4);
        float threePersony = fdao.getEachTypeCountPercentage(4455666, 3);
        float twoPersony = fdao.getEachTypeCountPercentage(4455666, 2);
        float onePersony = fdao.getEachTypeCountPercentage(4455666, 1);
        Statistic Sonystats = new Statistic();
        //Sonystats.setAvg(()avgsony);
        Sonystats.setCount(sonycount);
        Sonystats.setFivePer(fivePersony);
        Sonystats.setFourPer(fourPersony);
        Sonystats.setThreePer(threePersony);
        Sonystats.setTwoPer(twoPersony);
        Sonystats.setOnePer(onePersony);
        Sonystats.setName(Lgstats.getName(4455666));
        //statistics.add(Sonystats);

        //probability
        probability.ProbabilityDAO prdao = probability.ProbabilityDAOFactory.createProbability();
        float iphoneproba = prdao.getProbability(112233);
        float samsungproba = prdao.getProbability(223344);
        float lgproba = prdao.getProbability(334455);
        float sonyproba = prdao.getProbability(4455666);

        request.setAttribute("avg", DecimalUtils.round(avg, 1));
        request.setAttribute("count", count);
        request.setAttribute("fivePer", fivePer);
        request.setAttribute("fourPer", fourPer);
        request.setAttribute("threePer", threePer);
        request.setAttribute("twoPer", twoPer);
        request.setAttribute("onePer", onePer);
        request.setAttribute("rest", 5 - (int) avg);

        request.setAttribute("avgSam", DecimalUtils.round(avgSam, 1));
        request.setAttribute("Samcount", Samcount);
        request.setAttribute("fivePerSam", fivePerSam);
        request.setAttribute("fourPerSam", fourPerSam);
        request.setAttribute("threePerSam", threePerSam);
        request.setAttribute("twoPerSam", twoPerSam);
        request.setAttribute("onePerSam", onePerSam);
        request.setAttribute("restSam", 5 - (int) avgSam);

        request.setAttribute("avglg", DecimalUtils.round(avglg, 1));
        request.setAttribute("lgcount", lgcount);
        request.setAttribute("fivePerlg", fivePerlg);
        request.setAttribute("fourPerlg", fourPerlg);
        request.setAttribute("threePerlg", threePerlg);
        request.setAttribute("twoPerlg", twoPerlg);
        request.setAttribute("onePerlg", onePerlg);
        request.setAttribute("restlg", 5 - (int) avglg);

        request.setAttribute("avgsony", DecimalUtils.round(avgsony, 1));
        request.setAttribute("sonycount", sonycount);
        request.setAttribute("fivePersony", fivePersony);
        request.setAttribute("fourPersony", fourPersony);
        request.setAttribute("threePersony", threePersony);
        request.setAttribute("twoPersony", twoPersony);
        request.setAttribute("onePersony", onePersony);
        request.setAttribute("restsony", 5 - (int) avgsony);

        request.setAttribute("iphoneproba", DecimalUtils.round(iphoneproba, 2));
        request.setAttribute("samsungproba", DecimalUtils.round(samsungproba, 2));
        request.setAttribute("lgproba", DecimalUtils.round(lgproba, 2));
        request.setAttribute("sonyproba", DecimalUtils.round(sonyproba, 2));
              //a            //b                              //c                         //d
        if ((iphoneproba >= samsungproba) && (iphoneproba >= lgproba) && (iphoneproba>= sonyproba)) { // a >= b,c,d,e
            request.setAttribute("largest", iphoneproba);
            request.setAttribute("name", "iphone");
        } else if ((samsungproba >= lgproba) && (samsungproba >= sonyproba)) {      // b >= c,d,e
            request.setAttribute("largest", samsungproba);
            request.setAttribute("name", "Samsung");
        } else if ((lgproba >= sonyproba)) {                  // c >= d,e
            request.setAttribute("largest", lgproba);
            request.setAttribute("name", "LG");
       
        } else {                                            // e > d
            request.setAttribute("largest", sonyproba);
            request.setAttribute("name", "Sony");
        }

        request.getRequestDispatcher("Stats.jsp").forward(request, response);

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
