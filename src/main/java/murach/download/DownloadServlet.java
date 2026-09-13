/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package murach.download;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import murach.business.User;
import murach.data.UserIO;
import murach.util.CookieUtil;

/**
 *
 * @author phatn
 */
@WebServlet("/DownloadServlet")
public class DownloadServlet extends HttpServlet {
    
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        
        String action = request.getParameter("action");
        if (action == null){
            action = "viewAlbums";
        }
        
        String url = "/view/index.jsp";
        if (action.equals("viewAlbums")) {
            url = "/view/index.jsp";
        }
        else if (action.equals("checkUser")) {
            url = checkUser(request, response);
        }
        
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }
    
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        
        String action = request.getParameter("action");
        
        String url = "/view/index.jsp";
        if (action.equals("registerUser")) {
            url = registerUser(request, response);
        }
        
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }
    
    private String checkUser(HttpServletRequest request, HttpServletResponse response) {
        
        String productCode = request.getParameter("productCode");
        HttpSession session = request.getSession();
        session.setAttribute("productCode", productCode);
        User user = (User) session.getAttribute("user"); //Kiem tra User
        
        String url;
        // Neu User khong ton tai
        if (user == null) {
            Cookie[] cookies = request.getCookies();
            String emailAddress = CookieUtil.getCookieValue(cookies, "emailCookie");
            
            // Neu cookie khong ton tai, den trang Dang ky
            if (emailAddress == null || emailAddress.equals("")) {
                url = "/view/register.jsp";
            }
            
            // Neu cookie ton tai, tao obj User va den trang Donwload
            else {
                ServletContext sc = getServletContext();
                String path = sc.getRealPath("/WEB-INF/EmailList.txt");
                user = UserIO.getUser(emailAddress, path);
                session.setAttribute("user", user);
                url = "/view/" + productCode + "_download.jsp";
            }
        }
        
        // Neu User ton tai, den trang Download
        else {
            url = "/view/" + productCode + "_download.jsp";
        }
        return url;
    }
    
    private String registerUser(HttpServletRequest request, HttpServletResponse response) {
        
        // Lay thong tin User
        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        
        // Luu thong tin User trong User Obj
        User user = new User();
        user.setEmail(email);
        user.setFirstName(firstName);
        user.setLastName(lastName);
        
        // Viet User Obj trong file
        ServletContext sc = getServletContext();
        String path = sc.getRealPath("WEB-INF/EmailList.txt");
        UserIO.add(user, path);
        
        // Luu User Obj vao trong session
        HttpSession session = request.getSession();
        session.setAttribute("user", user);
        
        // Them cookie luu thong tin email user vao trong browser
        CookieUtil.addCookie(response, "emailCookie", email, 60 * 60 * 24 *  365 * 2);
        
        // Tra ve URL phu hop ho trang Download
        String productCode = (String) session.getAttribute("productCode");
        String url = "/view/" + productCode + "_download.jsp";
        return url;
    }
}
