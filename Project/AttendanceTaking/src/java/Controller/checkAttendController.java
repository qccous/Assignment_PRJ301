/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOAttend;
import DAO.DAOSchedule;
import Model.ClassEntity;
import Model.Slot;
import Model.Date;
import Model.StudentByClass;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Kuyet
 */
public class checkAttendController extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet checkAttendController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet checkAttendController at " + request.getContextPath() + "</h1>");
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
            DAOSchedule dao = new DAOSchedule();
            List<Date> weekly = dao.getDateTime();
            List<Slot> slot = dao.getSlotTime();
            List<ClassEntity> listC = dao.getList();
            request.setAttribute("weekly", weekly);
            request.setAttribute("slot", slot);
            request.setAttribute("listC", listC);
          
            request.getRequestDispatcher("attendance.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(checkAttendController.class.getName()).log(Level.SEVERE, null, ex);
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
        String slot = request.getParameter("slot");
        String time = request.getParameter("time");
        String classId = request.getParameter("classId");
        DAOAttend dao = new DAOAttend();
        DAOSchedule dao1 = new DAOSchedule();
        List<StudentByClass> list;
        try {
            HttpSession session = request.getSession(true);
            list = dao.getListClassByStudent(Integer.parseInt(slot), 3, time);
            List<Model.Date> weekly = dao1.getDateTime();
            List<Slot> slotL = dao1.getSlotTime();
            List<ClassEntity> listC = dao1.getList();
            request.setAttribute("weekly", weekly);
            request.setAttribute("slotL", slot);
            request.setAttribute("listC", listC);
            request.setAttribute("list", list);
            session.setAttribute("list", list);

            request.getRequestDispatcher("listStudent.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(checkAttendController.class.getName()).log(Level.SEVERE, null, ex);
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
