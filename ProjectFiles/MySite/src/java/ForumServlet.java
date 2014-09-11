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
@WebServlet(name="ForumServlet", urlPatterns={"/ForumServlet"})
public class ForumServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();

    // Get the session
    HttpSession session = request.getSession();

    // Does the session indicate this user already logged in?
    Object done = session.getAttribute("logon.isDone");  // marker object
    if (done == null) {
      // No logon.isDone means she hasn't logged in.
      // Save the request URL as the true target and redirect to the login page.
      session.setAttribute("login.target", request.getRequestURI().toString());
      response.sendRedirect(request.getContextPath() + "/login.html");
      return;
    }

    // If we get here, the user has logged in and can see the goods
    //Redirect to a new html page
    response.sendRedirect(request.getContextPath() + "/ForumPage.html");
    
    /*out.println("<html><head><title>Information</title></head><body>");
    out.println("<p align=\"right\">" + done + " (<a href=\"Logout\">logout</a>)</p>");
    out.println("<h1>Secret!</h1>");
    out.println("<p>This is the secret information!</p>");
    out.println("<p>Now that you are authenticated, you can see ");
    out.println("the <a href=\"ProtectedResource\">second secret information</a> ");
    out.println("immediately.</p>");
    System.out.println("request.getContextPath() = " + request.getContextPath());
    out.println("<p align=\"right\"><a href=\""+ request.getContextPath() + "/" +"\">home</p>");
    out.println("</body></html>");*/
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
