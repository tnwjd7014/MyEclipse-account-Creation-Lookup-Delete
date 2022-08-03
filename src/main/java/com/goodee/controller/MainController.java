package com.goodee.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodee.bean.DataBean;
import com.goodee.bean.PageBean;
import com.goodee.service.MainService;

/**
 * Servlet implementation class MainController
 */
@WebServlet("/MainController")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		Integer i = Integer.parseInt(request.getParameter("page"));
		
		DataBean bean1 = null;
		PageBean bean2 = null;
		
		// 정보 조회
		if(i == 1) {
			bean1 = MainService.getBean();
			request.setAttribute("bean1", bean1);
		// 계정 생성
		}else if(i == 2) {
			bean2 = new PageBean();
			bean2.setSubTitle("내 정보 생성");
			bean2.setTitle("계정 생성");
			bean2.setNum(2);
			bean2.setUrl("SaveController");
			request.setAttribute("bean2", bean2);
		// 계정 수정
		}else if(i == 3) {
			bean1 = MainService.getBean();
			bean2 = new PageBean();
			bean2.setSubTitle("내 정보 수정");
			bean2.setTitle("계정 수정");
			bean2.setNum(2);
			bean2.setUrl("SaveController");
			request.setAttribute("bean1", bean1);
			request.setAttribute("bean2", bean2);
		// 계정 삭제
		}else if(i == 4) {
			bean1 = MainService.getBean();
			bean1.setName(null);
			bean1.setGender(null);
			bean1.setJob(null);
			bean1.setHobby(null);
		}
		
		RequestDispatcher rdp = request.getRequestDispatcher("/quiz1/mainpage.jsp");
		rdp.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
