/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jamie
 */
@WebServlet(name = "LoginHandler", urlPatterns = {"/LoginHandler"})
public class LoginHandler extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        // Get the user's account number, password, and pin
        String account = request.getParameter("account");
        String password = request.getParameter("password");

        // Check the name and password for validity
        if (!allowUser(account, password)) {
            out.println("<html><head><title>Access Denied</title></head>");
            out.println("<body><p>Your login and password are invalid.<br/>");
            out.println("You may want to <a href=\"login.html\">try again</a>.</p>");
            out.println("</body></html>");
        } else {
            // Valid login. Make a note in the session object.
            HttpSession session = request.getSession();
            session.setAttribute("logon.isDone", account);  // just a marker object

            // Try redirecting the client to the page he first tried to access
            try {
                String target = (String) session.getAttribute("login.target");
                if (target != null) {
                    response.sendRedirect(target);
                    return;
                }
            } catch (Exception ignored) {
            }

            // Couldn't redirect to the target. Redirect to the site's home page.
            response.sendRedirect("/");
        }
    }

    protected boolean allowUser(String account, String password) {
        // here you connect to the DB and check whether account and password match
        // if so return true else false
        if (account.equals("guest") && password.equals("password")) {
            return true;
        } else {
            return false;  // trust everyone
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
