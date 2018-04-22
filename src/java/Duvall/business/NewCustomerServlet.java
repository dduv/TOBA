package Duvall.business;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import Duvall.business.User;
import Duvall.data.UserDB;

/**
 *
 * @author dduv
 */
public class NewCustomerServlet extends HttpServlet {

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
        String url = "/New_customer.jsp";
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join"; // default action
        }

        // perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/index.jsp"; // the join page
        } else if (action.equals("add")) {
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String zipCode = request.getParameter("zipCode");
            String email = request.getParameter("email");
            String userName = lastName + zipCode;
            String password = "welcome1";  // default initial password

            // validate the parameters
            String message;
            if (firstName == null || lastName == null || phone == null || address == null || city == null || state == null || zipCode == null || email == null
                    || firstName.isEmpty() || lastName.isEmpty() || phone.isEmpty() || address.isEmpty() || city.isEmpty() || state.isEmpty() || zipCode.isEmpty() || email.isEmpty()) {
                message = "Please fill out all text boxes.";
                url = "/New_customer.jsp";

            } else {
                message = "";
                url = "/Success.jsp";

                // store data in User object
                User user = new User(userName, password, firstName, lastName, phone, address, city, state, zipCode, email);
                HttpSession session = request.getSession();
                session.setAttribute("user", user);

                // add new customer to database
                UserDB.insert(user);

            }
            // request.setAttribute("user", user);
            request.setAttribute("message", message);

        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
