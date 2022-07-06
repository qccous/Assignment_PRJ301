/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOAccount;
import Model.Account;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Kuyet
 */
public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action != null && action.equalsIgnoreCase("logout")) {
            request.getSession().setAttribute("user", null);
        }
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DAOAccount dao = new DAOAccount();
        String remember = request.getParameter("remember");
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        Account acc = dao.login(user, pass);
        if (acc != null) {
            request.getSession().setAttribute("user", acc);
            if (remember == "1") {
                Cookie u = new Cookie("userC", user);
                Cookie p = new Cookie("passC", pass);
                u.setMaxAge(60 * 60 * 24 * 30);
                p.setMaxAge(60 * 60 * 24);
                response.addCookie(u);
                response.addCookie(p);
            }
            response.sendRedirect("Home");

        } else {
            request.setAttribute("message", "Wrong username or password!");
            request.getRequestDispatcher("login.jsp").forward(request, response);

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
