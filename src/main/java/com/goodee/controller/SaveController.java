package com.goodee.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodee.bean.DataBean;
import com.goodee.service.MainService;

/**
 * Servlet implementation class SaveController
 */
@WebServlet("/SaveController")
public class SaveController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		DataBean bean1 = MainService.getBean();
		bean1.setName(request.getParameter("name"));
		bean1.setGender(request.getParameter("gender"));
		bean1.setJob(request.getParameter("job"));
		bean1.setHobby(request.getParameter("hobby"));
		
		response.sendRedirect(request.getContextPath()+"/MainController?page=1");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
