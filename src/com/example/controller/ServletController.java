package com.example.controller;

import com.example.entity.Product;
import com.example.model.ProductFinderBean;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "ServletController")
public class ServletController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //step 1 : nhan request
        String keywordData = request.getParameter("name");
        System.out.println(keywordData);
        if(keywordData == null || keywordData.trim().isEmpty()){
            response.sendRedirect("search.jsp?msg=Enter your keyword");
            return;
        }
        //step 2
        ProductFinderBean finder = new ProductFinderBean();
        finder.setKeyword(keywordData);

        //step
        //co 2 cach de lam b3 la session - doi voi session thif phai check trang thai con lam bang dispatcher thi

//        HttpSession session = request.getSession();
//        session.setAttribute("finder", finder);
        request.setAttribute("finder",finder);

        RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
        rd.forward(request,response);



    }
}
