/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jonathanaguilar
 */
@WebServlet(urlPatterns = {"/GuardarResenaServlet"})
public class GuardarResenaServlet extends HttpServlet {

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
        String idProducto = request.getParameter("id");
        String resena = request.getParameter("resena");
        String calificacion = request.getParameter("calificacion");
        String FILE_PATH = "resenas.csv"; // Ruta del archivo CSV
        
        FileWriter fw = null;
        PrintWriter pw = null;

        try {
            // true = append (agregar al final del archivo)
            fw = new FileWriter(FILE_PATH, true);
            pw = new PrintWriter(fw);

            // Reemplaza comas en la reseña para no romper el CSV
            String resenaLimpia = resena.replace(",", ";");

            // Formato CSV: id,resena,calificacion
            pw.println(idProducto + "," + resenaLimpia + "," + calificacion);

            System.out.println("Reseña guardada exitosamente en resenas.csv");

        } catch (IOException e) {
            System.err.println("Error guardando reseña en CSV: " + e.getMessage());
        } finally {
            try { if (pw != null) pw.close(); } catch (Exception ex) {}
            try { if (fw != null) fw.close(); } catch (Exception ex) {}
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
