/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAL.StakeDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Goal;
import model.Stake;

/**
 *
 * @author DELL
 */
public class commitStep2Controller extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet commitStep2Controller</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet commitStep2Controller at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        try {
            StakeDAO stakedb = new StakeDAO();
            ArrayList<Stake> stakes = stakedb.all();
            Goal goal = (Goal) request.getSession().getAttribute("goal");
            request.setAttribute("stakes", stakes);
            request.getSession().setAttribute("goal", goal);
            request.getRequestDispatcher("commitStep2.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(commitStep2Controller.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            HttpSession session = request.getSession();
            StakeDAO stakeDB = new StakeDAO();
            Goal goal = (Goal) session.getAttribute("goal");
            if (goal ==null) {
                request.getRequestDispatcher("commit_step_1").forward(request, response);
                
            }
            int raw_stake =Integer.parseInt(request.getParameter("StakeType"));
            float raw_amount = Float.parseFloat(request.getParameter("AmountPerWeek"));
            System.out.println("");
            goal.setStake(stakeDB.get(raw_stake));
            goal.setMoneyToPaid(raw_amount);
            
            session.setAttribute("goal", goal);
            response.sendRedirect("commit_step_3");
        } catch (SQLException ex) {
            Logger.getLogger(commitStep2Controller.class.getName()).log(Level.SEVERE, null, ex);
        }
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
