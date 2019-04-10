/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAL.CategoryDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.Category;
import model.Goal;

/**
 *
 * @author DELL
 */
public class commitStep1Controller extends HttpServlet {

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
            out.println("<title>Servlet commitStep1Controller</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet commitStep1Controller at " + request.getContextPath() + "</h1>");
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
        CategoryDAO cateDB;
        try {
            cateDB = new CategoryDAO();
            ArrayList<Category> categories = cateDB.all();
            request.setAttribute("categories", categories);
            
            request.getRequestDispatcher("commitStep1.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(commitStep1Controller.class.getName()).log(Level.SEVERE, null, ex);
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
            HttpSession session =request.getSession();
            
            CategoryDAO cateDB = new CategoryDAO();
            String raw_title=request.getParameter("goalName");
            String raw_desc = request.getParameter("GoalDescription");
            String raw_type = request.getParameter("CommitType");
            String raw_start = request.getParameter("StartDate");
            int raw_length = Integer.parseInt(request.getParameter("numberOfWeeks"));
            int cateID = Integer.parseInt(request.getParameter("GoalCategory"));
            System.out.println("raw_title:"+raw_title+"\n"+"raw_desc:"+raw_desc+"\n"+"raw_type:"+raw_type+"\n"+"raw_date:"+raw_start+"\n"+"raw_length:"+raw_length+"\n"+"cateID: "+cateID);
            Date start_date = Date.valueOf(raw_start);

            Goal goal= new Goal();
            goal.setGoalOwner((Account) session.getAttribute("account"));
            goal.setTitle(raw_title);
            goal.setDescription(raw_desc);
            goal.setGoalType(raw_type);
            goal.setCategory(cateDB.get(cateID));
            goal.setStartDate(start_date);
            goal.setLengthOfGoal(raw_length);
            session.setAttribute("goal", goal);
            response.sendRedirect("commit_step_2");
        } catch (SQLException ex) {
            Logger.getLogger(commitStep1Controller.class.getName()).log(Level.SEVERE, null, ex);
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
