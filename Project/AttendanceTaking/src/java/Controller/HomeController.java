package Controller;

import DAO.DAOSchedule;
import Model.Schedule;
import Model.Week;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Collectors;

/**
 *
 * @author Kuyet
 */
public class HomeController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
        DAOSchedule dao = new DAOSchedule();
        List<Schedule> ls;
        try {
            int currentWeek = Integer.parseInt(new SimpleDateFormat("w").format(new java.util.Date()));

            ls = dao.getSchedule(100223, currentWeek);
            List<String> days = new ArrayList<>(Arrays.asList("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"));
            List<Week> weekly = dao.getWeekTime();

            Map<Integer, List<Schedule>> map = ls.stream().collect(Collectors.groupingBy(Schedule::getSlot));
            Map<Integer, Map<String, Schedule>> map2 = new HashMap<>();

            for (Map.Entry<Integer, List<Schedule>> entry : map.entrySet()) {
                Integer key = entry.getKey();
                List<Schedule> value = entry.getValue();
                map2.put(key, value.stream().collect(Collectors.toMap(Schedule::getDay, Function.identity())));
            }
            request.setAttribute("selectedweek", currentWeek);
            request.setAttribute("weekly", weekly);
            request.setAttribute("dates", dao.getDateTime(currentWeek));
            request.setAttribute("days", days);
            request.setAttribute("slots", dao.getSlotTime());
            request.setAttribute("map", map2);

            dispatch(request, response, "home.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
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
        DAOSchedule dao = new DAOSchedule();
        List<Schedule> ls;
        try {
            Integer week = Integer.parseInt(request.getParameter("weekid"));
            
            ls = dao.getSchedule(100223, week);
            List<String> days = new ArrayList<>(Arrays.asList("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"));
            List<Week> weekly = dao.getWeekTime();

            Map<Integer, List<Schedule>> map = ls.stream().collect(Collectors.groupingBy(Schedule::getSlot));

            Map<Integer, Map<String, Schedule>> map2 = new HashMap<>();

            for (Map.Entry<Integer, List<Schedule>> entry : map.entrySet()) {
                Integer key = entry.getKey();
                List<Schedule> value = entry.getValue();
                map2.put(key, value.stream().collect(Collectors.toMap(Schedule::getDay, Function.identity())));
            }
            request.setAttribute("selectedweek", week);
            request.setAttribute("weekly", weekly);
            request.setAttribute("dates", dao.getDateTime(week));
            request.setAttribute("days", days);
            request.setAttribute("slots", dao.getSlotTime());
            request.setAttribute("map", map2);

            dispatch(request, response, "home.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    private void dispatch(HttpServletRequest request, HttpServletResponse response,
            String url) throws ServletException, IOException {
        RequestDispatcher disp = request.getRequestDispatcher(url);
        disp.forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
