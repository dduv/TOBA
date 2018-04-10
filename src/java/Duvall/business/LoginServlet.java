package Duvall.business;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author dduv
 */
public class LoginServlet extends HttpServlet {

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
        String url = "Login.jsp";

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join"; // default action
        }

        // perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/index.jsp"; // the join page
        } else if (action.equals("login")) {
            // get parameter(s) from the request
            String username = request.getParameter("username");
            String password = request.getParameter("password");

                if (!username.equals("jsmith@toba.com") || !password.equals("letmein")) {
                   url = "/Login_failure.jsp";
                } else // forward the request to the account_activity.jsp
                {
                   url = "/account_activity.jsp";
                }

            } else if (action.equals("reset")) {
            // get parameter(s) from the request
            String newPassword = request.getParameter("newPassword");
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("user"); 
            user.setPassword(newPassword);  // modify password in user
            session.setAttribute("user", user); // save entire user object in session scope
            url = "/account_activity.jsp";
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
        return "Log in";
    }

}
