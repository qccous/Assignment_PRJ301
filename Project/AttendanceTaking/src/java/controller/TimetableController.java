/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DateDAO;
import dal.SlotDAO;
import dal.TimetableDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Datetime;
import model.Slot;
import model.Timetable;
import model.WeekTimetable;

/**
 *
 * @author Kuyet
 */
public class TimetableController extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            TimetableDAO sd = new TimetableDAO();
            List<Timetable> listT = new TimetableDAO().getAllTimetable();
            request.setAttribute("listT", listT);
            request.setAttribute("date", "2022-06-23");
        } catch (Exception ex) {
            Logger.getLogger(TimetableController.class.getName()).log(Level.SEVERE, null, ex);
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
        SlotDAO slotDAO = new SlotDAO();
        TimetableDAO timetableDAO = new TimetableDAO();
        DateDAO dateDAO = new DateDAO();
        try {
            List<Slot> slotList = slotDAO.getAllSlot();
            List<WeekTimetable> wttable = new ArrayList<WeekTimetable>(); 
            List<Timetable> timetableList = timetableDAO.getAllTimetable();
            List<Date> listDate = timetableDAO.getAllDate();
            List<Datetime> listDatetime = dateDAO.getAllDate();
            request.setAttribute("listDate", listDate);
            request.setAttribute("slotList", slotList);
            request.setAttribute("timetableList", timetableList);
            request.setAttribute("date", "2022-06-23");
            request.setAttribute("datetime", listDatetime);
        } catch (Exception ex) {
            Logger.getLogger(TimetableController.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.getRequestDispatcher("home.jsp").forward(request, response);

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
